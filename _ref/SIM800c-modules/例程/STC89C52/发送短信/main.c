/*****************************************************************************
程序名：	GSM发送短信
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
	
	Send_String("AT+CMGF=1\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CSMP=17,167,2,25\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CSCS=\"UCS2\"\r\n");
	Delay_Ms(100);
	
	Send_String("AT+CMGS=\"00310030003000380036\"\r\n");
	Delay_Ms(100);
	
	Send_String("8FD9662F4E0067616D4B8BD54FE1606F3002\r\n");
	Delay_Ms(100);
	
	Send_Char(0x1A);
	Delay_Ms(20000);
		
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
