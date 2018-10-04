/*****************************************************************************
��������	GSM����绰
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
/********����GSM�Ƿ�ע������**********/
int test_net_register;
/********GSM���ڽ������ݻ���**********/
unsigned char GSM_receive[20];
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
	//�����Ƿ�ע�ᵽ����
	while(test_net_register==No)
	{
		Send_String("AT+COPS?\r\n");
		Delay_Ms(1000);	
	}
	
	//��ʼ����绰��ATD���Լ��޸���Ҫ����ĵ绰����
	Send_String("ATE1\r\n");
	Delay_Ms(100);
	Send_String("AT+COLP=1\r\n");
	Delay_Ms(100);
	Send_String("ATD10086;\r\n");
	Delay_Ms(10000);
	Send_String("ATH\r\n");
	
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
