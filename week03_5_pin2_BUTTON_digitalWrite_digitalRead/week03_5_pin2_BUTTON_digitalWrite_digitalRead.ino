//week03_5_pin2_BUTTON_digitalWrite_digitalRead
void setup() {
  // put your setup code here, to run once:
  pinMode(2,INPUT_PULLUP);//按鍵button 是2號 ,沒接下去就會拉高
  for(int i=3;i<=13;i++){//把3 4 5.....2都設為OUTPUT
    pinMode(i,OUTPUT);//都發亮
  }
}
int now=3;//now light is 3
void loop() {
  // put your main code here, to run repeatedly:
  if(digitalRead(2)==LOW){
     now++;
     if(now>13) now=3;
     for(int i=3;i<=13;i++){
      digitalWrite(i,LOW);//全部先清空變成LOW
     }
     digitalWrite(now,HIGH);
     delay(500);
  }
}
