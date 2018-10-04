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
	
	//开启蓝牙
	Send_String("AT+BTPOWER=1\r\n");
	Delay_Ms(1000);	

	//搜索附近蓝牙设备
	Send_String("AT+BTSCAN=1,20\r\n");
	Delay_Ms(20000);
	
	//与第一个蓝牙设备发出配对请求
	Send_String("AT+BTPAIR=0,1\r\n");
	Delay_Ms(5000);
	
	//应答配对
	Send_String("AT+BTPAIR=1,1\r\n");
	Delay_Ms(8000);
	
	//应答链接请求
	Send_String("AT+BTACPT=1\r\n");
	Delay_Ms(5000);
	
	Send_String("AT+BTSPPSEND\r\n");
	Delay_Ms(100);
	
	Send_String("Test");
	Delay_Ms(100);
	
	Send_Char(0x1A);
	Delay_Ms(1000);
	
	Send_String("AT+BTDISCONN=1\r\n");
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
		}
		else
		{
			GSM_receive[GSMDATA_count]=UART_data;
			GSMDATA_count++;
		}
	}
	RI=0;
}
