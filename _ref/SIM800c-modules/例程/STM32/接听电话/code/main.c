/*****************************************************************************
��������GSM�����绰����
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
	
	Usart2_Send("AT+CLIP=1\r\n");
	DELAY_MS(100);
	
	//�ȴ��绰����
	while(test_have_call==No);
	//���Ҫ�����ͷ���ATA
	//Usart1_Send("ATA\r\n");
	//��������ֱ�ӹҵ绰
	Usart1_Send("have some calls!\r\n");	
	DELAY_MS(5000);
	Usart2_Send("ATH\r\n");
	
	//GSM�ر�
	Power_Key_GPIO_Up;
	DELAY_MS(1000);
	Power_Key_GPIO_Down;
	
	while(1)
	{
	}
}
