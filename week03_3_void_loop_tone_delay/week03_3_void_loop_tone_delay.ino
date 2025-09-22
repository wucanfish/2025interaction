//week03_3_void_loop_tone_delay
void setup() {
  pinMode(8,OUTPUT);

}

void loop() {
  tone(8,800,200);
  delay(1000);//1000ms=1s
}
