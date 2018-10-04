#include "usart2.h"
#include "stm32f10x.h"
//RTrobot.org
//禁止用于商业行为

char GSM_Uart2_Data[256]={ 0 };
char GSM_Data[256]={ 0 };
unsigned int GSM_Uart2_Data_Num=0;
unsigned char GSM_Uart2_Start_flag=0;

/********测试GSM是否启动**********/
unsigned char test_boot;
/********测试GSM是否注册网络**********/
unsigned char test_net_register;

/********************************************************************************************
串口2发送函数
********************************************************************************************/
void Usart2_Send(unsigned char *str)
{
	while(*str != '\0')
	{		
		while(USART_GetFlagStatus(USART2, USART_FLAG_TC)==RESET);
		USART_SendData(USART2 , *str);
		str++;
	}
}


/********************************************************************************************
端口初始化函数
********************************************************************************************/
void Usart2_Config(void)
{		
	GPIO_InitTypeDef GPIO_Usart2;																//定义端口变量
	USART_InitTypeDef USART_Usart2;
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);			//使端口GPIOA时钟生效，使用外设时钟2
	
	//TX
 	GPIO_Usart2.GPIO_Pin = GPIO_Pin_2 ;													//设置GPIO子端口号	
  GPIO_Usart2.GPIO_Mode = GPIO_Mode_AF_PP;   								  //设置为复用推挽输出
  GPIO_Usart2.GPIO_Speed = GPIO_Speed_50MHz; 									//设置端口输出频率为50MHz
  GPIO_Init(GPIOA, &GPIO_Usart2);		  												//初始化端口
	
	//RX
	GPIO_Usart2.GPIO_Pin = GPIO_Pin_3;													//设置GPIO子端口号
	GPIO_Usart2.GPIO_Mode = GPIO_Mode_IN_FLOATING;							//浮空输入
	GPIO_Init(GPIOA, &GPIO_Usart2);															//初始化端口
	
	USART_Usart2.USART_BaudRate = 9600;													//设置波特率
	USART_Usart2.USART_WordLength = USART_WordLength_8b;				//设置数据位
	USART_Usart2.USART_StopBits = USART_StopBits_1;							//设置停止位
	USART_Usart2.USART_Parity = USART_Parity_No ;								//设置校检位
	USART_Usart2.USART_HardwareFlowControl = USART_HardwareFlowControl_None;			//关闭硬件控制模式
	USART_Usart2.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;		//使能
	USART_Init(USART2,&USART_Usart2); 													//初始化串口
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);							//配置接收数据中断
	USART_Cmd(USART2, ENABLE);																	//开启串口一
}

/********************************************************************************************
中断初始化函数
********************************************************************************************/
void Nvic_Usart2_Config(void)
{
	NVIC_InitTypeDef NVIC_Usart2;																//设置中断控制器变量 
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);							//设置中断优先级
	
	NVIC_Usart2.NVIC_IRQChannel = USART2_IRQn;	 								//设置为串口1全局中断
	NVIC_Usart2.NVIC_IRQChannelPreemptionPriority = 1;					//设置抢占优先级
	NVIC_Usart2.NVIC_IRQChannelSubPriority = 0;									//设置从优先级
	NVIC_Usart2.NVIC_IRQChannelCmd = ENABLE;										//IRQ通道使能
	NVIC_Init(&NVIC_Usart2);
}

void USART2_IRQHandler(void)
{
	unsigned char Data_char_usart2;	
	if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
	{
		Data_char_usart2=USART2->DR;
		GSM_Uart2_Data[GSM_Uart2_Data_Num]=Data_char_usart2;
		GSM_Uart2_Data_Num++;			
		if(Data_char_usart2=='\n')
		{
			if(GSM_Uart2_Data[0]=='O'&&GSM_Uart2_Data[1]=='K')
				test_boot=Yes;
			else
				test_boot=No;
			
			if(GSM_Uart2_Data[12]=='C')
        test_net_register=Yes;  
			else
				test_net_register=No; 	
			
			GSM_Uart2_Data_Num=0;	
		}
	}	
}
