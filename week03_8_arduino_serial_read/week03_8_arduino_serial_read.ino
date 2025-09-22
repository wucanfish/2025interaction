//week03_8_arduino_serial_read
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(8,OUTPUT);
}
int beep=1;//一開始會叫
void serialEvent(){
  while(Serial.available()){
    char now = Serial.read();
    if(now==' ') beep=0;//空白字母->不叫
    if(now=='b') beep=1;//b -> 叫
  }
}
void loop() {
  if(beep==1){
    tone(8,800,200);
    delay(1000);
  }
}
