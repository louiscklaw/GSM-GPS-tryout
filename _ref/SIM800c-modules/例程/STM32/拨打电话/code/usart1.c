#include "usart1.h"
#include "stm32f10x.h"
//RTrobot.org
//��ֹ������ҵ��Ϊ

/********************************************************************************************
����1���ͺ���
********************************************************************************************/
void Usart1_Send(unsigned char *str)
{
	while(*str != '\0')
	{		
		while(USART_GetFlagStatus(USART1, USART_FLAG_TC)==RESET);
		USART_SendData(USART1 , *str);
		str++;
	}
}


/********************************************************************************************
�˿ڳ�ʼ������
********************************************************************************************/
void Usart1_Config(void)
{		
	GPIO_InitTypeDef GPIO_Uart;																											//����˿ڱ���
	USART_InitTypeDef USART_Uart;
	
	RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA|RCC_APB2Periph_USART1, ENABLE); 		//ʹ�˿�GPIOAʱ����Ч��ʹ������ʱ��2
	
	//TX
 	GPIO_Uart.GPIO_Pin = GPIO_Pin_9 ;																								//����GPIO�Ӷ˿ں�	
  	GPIO_Uart.GPIO_Mode = GPIO_Mode_AF_PP;     																		//����Ϊ�����������
  	GPIO_Uart.GPIO_Speed = GPIO_Speed_50MHz; 																			//���ö˿����Ƶ��Ϊ50MHz
  	GPIO_Init(GPIOA, &GPIO_Uart);		  																						//��ʼ���˿�
	
	//RX
	GPIO_Uart.GPIO_Pin = GPIO_Pin_10;																								//����GPIO�Ӷ˿ں�
	GPIO_Uart.GPIO_Mode = GPIO_Mode_IN_FLOATING;																		//��������
	GPIO_Init(GPIOA, &GPIO_Uart);																										//��ʼ���˿�
	
	USART_Uart.USART_BaudRate = 9600;																								//���ò�����
	USART_Uart.USART_WordLength = USART_WordLength_8b;															//��������λ
	USART_Uart.USART_StopBits = USART_StopBits_1;																		//����ֹͣλ
	USART_Uart.USART_Parity = USART_Parity_No ;																			//����У��λ
	USART_Uart.USART_HardwareFlowControl = USART_HardwareFlowControl_None;					//�ر�Ӳ������ģʽ
	USART_Uart.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;													//ʹ��
	USART_Init(USART1,&USART_Uart); 
	USART_Cmd(USART1, ENABLE);
}

/********************************************************************************************
�жϳ�ʼ������
********************************************************************************************/
void Nvic_Usart1_Config(void)
{
	NVIC_InitTypeDef NVIC_Uart1;																										//�����жϿ��������� 
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);																	//�����ж����ȼ�
		
	NVIC_Uart1.NVIC_IRQChannel = USART2_IRQn;	 																			//����Ϊ����1ȫ���ж�
	NVIC_Uart1.NVIC_IRQChannelPreemptionPriority = 1;																//������ռ���ȼ�
	NVIC_Uart1.NVIC_IRQChannelSubPriority = 1;																			//���ô����ȼ�
	NVIC_Uart1.NVIC_IRQChannelCmd = ENABLE;																					//IRQͨ��ʹ��
	NVIC_Init(&NVIC_Uart1);
}

void USART1_IRQHandler(void)
{
		//NULL
}
