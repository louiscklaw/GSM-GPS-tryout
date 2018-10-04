/*****************************************************************************
程序名：  接听电话
RTrobot.org
禁止用于商业行为                              
*****************************************************************************/
boolean test_boot=false;
boolean test_net_register=false;
boolean test_have_call=false;
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
  Serial.println("sim register is ok!");
  Serial1.println("AT+CLIP=1");
}

void loop() {
  unsigned char comdata[50];
  unsigned char GSMDATA_count=0;
  while (Serial1.available() > 0)  
  {
    unsigned char comdata_bytes;
    comdata_bytes = char(Serial1.read());
    delay(2);
    if(comdata_bytes=='\n')
    {      
      if(comdata[0]=='+'&&comdata[1]=='C'&&comdata[2]=='L'&&comdata[3]=='I'&&comdata[4]=='P')
        test_have_call=true;
        GSMDATA_count=0;
    }
    else
    {
      comdata [GSMDATA_count]=comdata_bytes;
      GSMDATA_count++;
    }
  }

  if(test_have_call==true)
  {
    test_have_call=false;
    Serial.println("have some calls!");
    delay(5000);
    Serial1.println("ATH");
  }
  else
  {
    digitalWrite(LED,LOW);
    delay(1000);
    digitalWrite(LED,HIGH);
    delay(1000);
    Serial.println("waitting calls!");
  }
}
