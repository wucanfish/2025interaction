//week02_3_mousePressed_serial
import processing.serial.*;//宣告USB Serial 變數myPort
Serial myPort;
void mousePressed(){
  myPort.write(' ');//mouse 按下時送 ' '
}
void setup(){
   size(400,400);
   myPort=new Serial(this,"COM4",9600);//Arduino set COM
}
void draw(){
   if(mousePressed)  background(#FF0000);
   else background(#00FF00);
}
