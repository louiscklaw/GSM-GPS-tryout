/*****************************************************************************
程序名：	GPRS链接TCP服务器
RTrobot.org
禁止用于商业行为                              
*****************************************************************************/
boolean test_boot=false;
boolean test_net_register=false;
boolean test_tcp=false;
const int LED = 13;
const int Power_key=2;


void setup() {
  pinMode(LED, OUTPUT);
  pinMode(Power_key, OUTPUT);
  Serial.begin(9600);
  Serial1.begin(9600);
  digitalWrite(Power_key,LOW);

  Serial.println("begin!");
  //GSM启动
  digitalWrite(Power_key,HIGH);
  delay(1000);
  digitalWrite(Power_key,LOW);
    
  //测试GSM是否启动
  while(test_boot==false)
  {
    Serial1.println("AT");
    while (Serial1.available() > 0)  
    {
      char comdata;
      comdata = char(Serial1.read());
      delay(2);
      if(comdata='K')
        test_boot=true;  
    }
    delay(300);
  }
  Serial.println("boot is ok!");
  
  //测试SIM卡是否已经注册网络
  while(test_net_register==false)
  {
    Serial1.println("AT+COPS?");
    unsigned char comdata[50];
    unsigned char GSMDATA_count=0;
    while (Serial1.available() > 0)  
    {
      unsigned char comdata_bytes;
      comdata_bytes = char(Serial1.read());
      delay(2);
      if(comdata_bytes=='\n')
      {      
        if(comdata[12]=='C')
          test_net_register=true;  
        GSMDATA_count=0;
      }
      else
      {
        comdata [GSMDATA_count]=comdata_bytes;
        GSMDATA_count++;
      }
    }
    delay(1000); 
  }

  delay(3000); 
  Serial.println("sim register is ok!");
  delay(1000); 
  Serial1.println("AT+CGCLASS=\"B\"");
  delay(1000);
  Serial1.println("AT+CGDCONT=1,\"IP\",\"CMNET\"");
  delay(1000);
  Serial1.println("AT+CGATT=1");
  delay(1000);
  Serial1.println("AT+CIPCSGP=1,\"CMNET\"");
  delay(1000);
  Serial1.println("AT+CLPORT=\"TCP\",\"3425\"\r\n");
  delay(1000);
  Serial1.println("AT+CIPSTART=\"TCP\",\"119.124.11.11\",\"3333\"");
  while(test_tcp==false)
  {
    unsigned char comdata[50];
    unsigned char GSMDATA_count=0;
    while (Serial1.available() > 0)  
    {
      unsigned char comdata_bytes;
      comdata_bytes = char(Serial1.read());
      delay(2);
      if(comdata_bytes=='\n')
      {      
        if(comdata[0]=='C'&&comdata[1]=='O'&&comdata[2]=='N'&&comdata[3]=='N'&&comdata[4]=='E'&&comdata[5]=='C'&&comdata[6]=='T'&&comdata[7]==' '&&comdata[8]=='O'&&comdata[9]=='K')
          test_tcp=true;  
        GSMDATA_count=0;
      }
      else
      {
        comdata [GSMDATA_count]=comdata_bytes;
        GSMDATA_count++;
      }
    }
  }
  
  Serial.println("connect OK!");
  Serial1.println("AT+CIPSEND");
  delay(200); 
  Serial1.print("Test TCP");
  delay(200); 
  Serial1.write(0x1A);
  delay(1000);
  Serial1.println("AT+CIPCLOSE=1");
  delay(200);
  
  //关闭GSM
  digitalWrite(Power_key,HIGH);
  delay(1000);
  digitalWrite(Power_key,LOW);
}

void loop() {
    digitalWrite(LED,LOW);
    delay(1000);
    digitalWrite(LED,HIGH);
    delay(1000);
}
