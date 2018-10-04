/*****************************************************************************
程序名：	GPRS链接TCP服务器
RTrobot.org
禁止用于商业行为                              
*****************************************************************************/

#include <reg52.h>
#include "UART.h"
#include "Delay.h"

#define Yes		1
#define No		0

sbit Power_key = P1 ^ 0;

/********测试GSM是否启动**********/
int test_boot;
/********测试GSM是否注册网络**********/
int test_net_register;
/********判断是否链接服务器**********/
int test_TCP;
/********GSM串口接收数据缓存**********/
unsigned char GSM_receive[60];
/********GSM串口接收计数器**********/
unsigned char GSMDATA_count;

void main(void)
{
	//初始化状态
	Power_key=0;
	test_boot=No;
	test_net_register=No;
	
	//GSM启动
	Power_key=1;
	Delay_Ms(1000);
	Power_key=0;
	
	Uart_Init();
	//测试是否已经开机
	while(test_boot==No)
	{
		Send_String("AT\r\n");
		Delay_Ms(1000);
	}
	//测试是否注册到网络
	while(test_net_register==No)
	{
		Send_String("AT+COPS?\r\n");
		Delay_Ms(1000);	
	}
	
	Send_String("AT+CGCLASS=\"B\"\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CGDCONT=1,\"IP\",\"CMNET\"\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CGATT=1\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CIPCSGP=1,\"CMNET\"\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CLPORT=\"TCP\",\"2222\"\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CIPSTART=\"TCP\",\"119.124.11.11\",\"3333\"\r\n");
	
	while(test_TCP==No);
	
	Send_String("AT+CIPSEND\r\n");
	Delay_Ms(100);
	
	Send_String("Test TCP");
	Delay_Ms(100);
	
	Send_Char(0x1A);
	Delay_Ms(1000);
	
	Send_String("AT+CIPCLOSE=1\r\n");
	Delay_Ms(100);
		
	//GSM关闭
	Power_key=1;
	Delay_Ms(1000);
	Power_key=0;
}

/*****************************************************************************
串口中断
/****************************************************************************/
void uart(void) interrupt 4
{
	unsigned char UART_data;
	if(RI)
	{
		UART_data=SBUF;
		if(UART_data=='\n')
		{
			if(GSM_receive[0]=='O'&&GSM_receive[1]=='K')
				test_boot=Yes;
			else
				test_boot=No;
			
			if(GSM_receive[12]=='C')
				test_net_register=Yes;
			else
				test_net_register=No;
			
			if(GSM_receive[8]=='O'&&GSM_receive[9]=='K')
				test_TCP=Yes;
			else
				test_TCP=No;
			
			GSMDATA_count=0;
		}
		else
		{
			GSM_receive[GSMDATA_count]=UART_data;
			GSMDATA_count++;
		}
	}
	RI=0;
}
