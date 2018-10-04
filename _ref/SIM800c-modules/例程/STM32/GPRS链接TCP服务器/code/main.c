/*****************************************************************************
��������GSM����TCP����������
��д�ˣ�Yayi�� 
ע��UART2��GSM��UART1��PC        
��ַ:rtrobot.org                                       
*****************************************************************************/
#include "stm32f10x.h"
#include "usart2.h"
#include "usart1.h"
#include "delay.h"

#define Power_Key_GPIO_Down GPIO_ResetBits(GPIOB, GPIO_Pin_13)
#define Power_Key_GPIO_Up GPIO_SetBits(GPIOB, GPIO_Pin_13)



unsigned char GPS_Data_Temp[256];

void Power_GPIO_Config(void)
{		
		GPIO_InitTypeDef GPIO_Power;																//����˿ڱ���
		RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOB, ENABLE); 			//ʹ�˿�GPIOAʱ����Ч��ʹ������ʱ��2
		GPIO_Power.GPIO_Pin =  GPIO_Pin_13 ;												//����GPIO�Ӷ˿ں�	
  	GPIO_Power.GPIO_Mode = GPIO_Mode_Out_PP;     								//����Ϊ�������
  	GPIO_Power.GPIO_Speed = GPIO_Speed_50MHz; 									//���ö˿����Ƶ��Ϊ50MHz
  	GPIO_Init(GPIOB, &GPIO_Power);		  												//��ʼ���˿�
		GPIO_ResetBits(GPIOB, GPIO_Pin_13);
}

int main(void)
{	
	test_boot=No;
	test_net_register=No;
	
	Power_GPIO_Config();
	Power_Key_GPIO_Down;
	
	//GSM����
	Power_Key_GPIO_Up;
	DELAY_MS(1000);
	Power_Key_GPIO_Down;
	
	Usart2_Config(); 
	Nvic_Usart2_Config();
	Usart1_Config(); 
	Nvic_Usart1_Config();
	Usart1_Send("START NOW\r\n");
	
	//�����Ƿ��Ѿ�����
	while(test_boot==No)
	{
		Usart2_Send("AT\r\n");
		DELAY_MS(1000);		
	}
	
	Usart1_Send("boot is ok!\r\n");
	
	//����SIM���Ƿ��Ѿ�ע������
	while(test_net_register==No)
	{
		Usart2_Send("AT+COPS?\r\n");
		DELAY_MS(1000);		
	}
	
	Usart1_Send("sim register is ok!\r\n");
	
	Usart2_Send("AT+CGCLASS=\"B\"\r\n");
	DELAY_MS(1000);
	
	Usart2_Send("AT+CGDCONT=1,\"IP\",\"CMNET\"\r\n");
	DELAY_MS(1000);
	
	Usart2_Send("AT+CGATT=1\r\n");
	DELAY_MS(1000);
	
	Usart2_Send("AT+CIPCSGP=1,\"CMNET\"\r\n");
	DELAY_MS(1000);
	
	Usart2_Send("AT+CLPORT=\"TCP\",\"2222\"\r\n");
	DELAY_MS(1000);
	
	Usart2_Send("AT+CIPSTART=\"TCP\",\"119.124.11.11\",\"3333\"\r\n");
	
	while(test_TCP==No);
	
	Usart1_Send("connect OK!\r\n");
	
	Usart2_Send("AT+CIPSEND\r\n");
	DELAY_MS(200);
	
	Usart2_Send("Test TCP");
	DELAY_MS(200);
	
	USART_SendData(USART2, 0x1A);
	DELAY_MS(1000);
	
	Usart2_Send("AT+CIPCLOSE=1\r\n");
	DELAY_MS(200);
	
	//GSM�ر�
	Power_Key_GPIO_Up;
	DELAY_MS(1000);
	Power_Key_GPIO_Down;
	
	while(1)
	{
	}
}
