#include "usart1.h"
#include "stm32f10x.h"
//RTrobot.org
//禁止用于商业行为

/********************************************************************************************
串口1发送函数
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
端口初始化函数
********************************************************************************************/
void Usart1_Config(void)
{		
	GPIO_InitTypeDef GPIO_Uart;																											//定义端口变量
	USART_InitTypeDef USART_Uart;
	
	RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOA|RCC_APB2Periph_USART1, ENABLE); 		//使端口GPIOA时钟生效，使用外设时钟2
	
	//TX
 	GPIO_Uart.GPIO_Pin = GPIO_Pin_9 ;																								//设置GPIO子端口号	
  	GPIO_Uart.GPIO_Mode = GPIO_Mode_AF_PP;     																		//设置为复用推挽输出
  	GPIO_Uart.GPIO_Speed = GPIO_Speed_50MHz; 																			//设置端口输出频率为50MHz
  	GPIO_Init(GPIOA, &GPIO_Uart);		  																						//初始化端口
	
	//RX
	GPIO_Uart.GPIO_Pin = GPIO_Pin_10;																								//设置GPIO子端口号
	GPIO_Uart.GPIO_Mode = GPIO_Mode_IN_FLOATING;																		//浮空输入
	GPIO_Init(GPIOA, &GPIO_Uart);																										//初始化端口
	
	USART_Uart.USART_BaudRate = 9600;																								//设置波特率
	USART_Uart.USART_WordLength = USART_WordLength_8b;															//设置数据位
	USART_Uart.USART_StopBits = USART_StopBits_1;																		//设置停止位
	USART_Uart.USART_Parity = USART_Parity_No ;																			//设置校检位
	USART_Uart.USART_HardwareFlowControl = USART_HardwareFlowControl_None;					//关闭硬件控制模式
	USART_Uart.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;													//使能
	USART_Init(USART1,&USART_Uart); 
	USART_Cmd(USART1, ENABLE);
}

/********************************************************************************************
中断初始化函数
********************************************************************************************/
void Nvic_Usart1_Config(void)
{
	NVIC_InitTypeDef NVIC_Uart1;																										//设置中断控制器变量 
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);																	//设置中断优先级
		
	NVIC_Uart1.NVIC_IRQChannel = USART2_IRQn;	 																			//设置为串口1全局中断
	NVIC_Uart1.NVIC_IRQChannelPreemptionPriority = 1;																//设置抢占优先级
	NVIC_Uart1.NVIC_IRQChannelSubPriority = 1;																			//设置从优先级
	NVIC_Uart1.NVIC_IRQChannelCmd = ENABLE;																					//IRQ通道使能
	NVIC_Init(&NVIC_Uart1);
}

void USART1_IRQHandler(void)
{
		//NULL
}
