/*****************************************************************************
程序名：GSM发送信息例程
编写人：Yayi　 
注意UART2接GSM，UART1接PC        
网址:rtrobot.org                                       
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
		GPIO_InitTypeDef GPIO_Power;																//定义端口变量
		RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOB, ENABLE); 			//使端口GPIOA时钟生效，使用外设时钟2
		GPIO_Power.GPIO_Pin =  GPIO_Pin_13 ;												//设置GPIO子端口号	
  	GPIO_Power.GPIO_Mode = GPIO_Mode_Out_PP;     								//设置为推挽输出
  	GPIO_Power.GPIO_Speed = GPIO_Speed_50MHz; 									//设置端口输出频率为50MHz
  	GPIO_Init(GPIOB, &GPIO_Power);		  												//初始化端口
		GPIO_ResetBits(GPIOB, GPIO_Pin_13);
}

int main(void)
{	
	test_boot=No;
	test_net_register=No;
	
	Power_GPIO_Config();
	Power_Key_GPIO_Down;
	
	//GSM启动
	Power_Key_GPIO_Up;
	DELAY_MS(1000);
	Power_Key_GPIO_Down;
	
	Usart2_Config(); 
	Nvic_Usart2_Config();
	Usart1_Config(); 
	Nvic_Usart1_Config();
	Usart1_Send("START NOW\r\n");
	
	//测试是否已经开机
	while(test_boot==No)
	{
		Usart2_Send("AT\r\n");
		DELAY_MS(1000);		
	}
	
	Usart1_Send("boot is ok!\r\n");
	
	//测试SIM卡是否已经注册网络
	while(test_net_register==No)
	{
		Usart2_Send("AT+COPS?\r\n");
		DELAY_MS(1000);		
	}
	
	Usart1_Send("sim register is ok!\r\n");
	
	Usart2_Send("AT+CMGF=1\r\n");
	DELAY_MS(100);
	
	Usart2_Send("AT+CSMP=17,167,2,25\r\n");
	DELAY_MS(100);
	
	Usart2_Send("AT+CSCS=\"UCS2\"\r\n");
	DELAY_MS(100);
	
	Usart2_Send("AT+CMGS=\"00310030003000380036\"\r\n");
	DELAY_MS(100);
	
	Usart2_Send("8FD9662F4E0067616D4B8BD54FE1606F3002\r\n");
	DELAY_MS(100);
	
	USART_SendData(USART2, 0x1A);
	DELAY_MS(20000);
	
	
	//GSM关闭
	Power_Key_GPIO_Up;
	DELAY_MS(1000);
	Power_Key_GPIO_Down;
	
	while(1)
	{
	}
}
