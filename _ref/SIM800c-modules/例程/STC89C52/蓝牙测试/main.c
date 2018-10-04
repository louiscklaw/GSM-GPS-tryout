/*****************************************************************************
��������	GPRS����TCP������
RTrobot.org
��ֹ������ҵ��Ϊ                              
*****************************************************************************/

#include <reg52.h>
#include "UART.h"
#include "Delay.h"

#define Yes		1
#define No		0

sbit Power_key = P1 ^ 0;

/********����GSM�Ƿ�����**********/
int test_boot;
/********GSM���ڽ������ݻ���**********/
unsigned char GSM_receive[60];
/********GSM���ڽ��ռ�����**********/
unsigned char GSMDATA_count;

void main(void)
{
	//��ʼ��״̬
	Power_key=0;
	test_boot=No;
	test_net_register=No;
	
	//GSM����
	Power_key=1;
	Delay_Ms(1000);
	Power_key=0;
	
	Uart_Init();
	//�����Ƿ��Ѿ�����
	while(test_boot==No)
	{
		Send_String("AT\r\n");
		Delay_Ms(1000);
	}
	
	//��������
	Send_String("AT+BTPOWER=1\r\n");
	Delay_Ms(1000);	

	//�������������豸
	Send_String("AT+BTSCAN=1,20\r\n");
	Delay_Ms(20000);
	
	//���һ�������豸�����������
	Send_String("AT+BTPAIR=0,1\r\n");
	Delay_Ms(5000);
	
	//Ӧ�����
	Send_String("AT+BTPAIR=1,1\r\n");
	Delay_Ms(8000);
	
	//Ӧ����������
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
		
	//GSM�ر�
	Power_key=1;
	Delay_Ms(1000);
	Power_key=0;
}

/*****************************************************************************
�����ж�
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
