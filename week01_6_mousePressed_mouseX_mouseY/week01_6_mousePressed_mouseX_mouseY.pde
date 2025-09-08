//week01_6_mousePressed_mouseX_mouseY
void setup(){
   size(500,500); 
}
int x=200,y=250;
void draw(){
   background(#FFFFAA);
   //if(mousePressed && x<mouseX && y<mouseY)//mouse 在(X,Y) 的右下角條件不構
   if(mousePressed && x<mouseX && mouseX<x+100 && y<mouseY && mouseY<y+50){
      x+=mouseX-pmouseX;
      y+=mouseY-pmouseY;
   }
   rect(x,y,100,50);
}
