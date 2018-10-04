/*****************************************************************************
程序名：  发送短信
RTrobot.org
禁止用于商业行为                              
*****************************************************************************/
boolean test_boot=false;
boolean test_net_register=false;
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

  Serial1.println("AT+CMGF=1");
  delay(200);
  Serial1.println("AT+CSMP=17,167,2,25");
  delay(200);
  Serial1.println("AT+CSCS=\"UCS2\"");
  delay(200);
  Serial1.println("AT+CMGS=\"00310030003000380036\"");
  delay(200);
  Serial1.print("8FD9662F4E0067616D4B8BD54FE1606F3002");
  delay(200);
  Serial1.write(26);
  delay(200); 
  Serial.println("send over!");
  delay(30000);

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
