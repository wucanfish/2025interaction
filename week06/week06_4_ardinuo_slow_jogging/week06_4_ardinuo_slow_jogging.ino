//week06_4_ardinuo_slow_jogging
void setup() {
  // put your setup code here, to run once:
  pinMode(8,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  tone(8,780,100);//自己決定聲音 Hz pin8 ,780 Hz,60ms
  delay(333);
  tone(8,320,60);//自己決定聲音 Hz pin8 ,320 Hz,60ms
  delay(300);
}
