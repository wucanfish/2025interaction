//week08_6_2048_part6_precessing_R_L
//要傳字母給arduino
import processing.serial.*;
Serial myPort;

color[] c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};//2^1,2^2,2^3....
color[] c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int [] N={0,2,4,8,16,32,64};//對應數字
int [][] B={{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};//版子
void keyPressed(){
  if(keyCode==LEFT) myPort.write('L');
  if(keyCode==RIGHT){
     myPort.write('R');
     for(int i=0;i<4;i++){
       int now=3;
       for(int j=3;j>=0;j--){//右往左慢慢找
         if(B[i][j]>0){//找到有的板子
           B[i][now]=B[i][j];
           while(now<3&&B[i][now+1]==B[i][now]){
              //if(B[i][now+1]==B[i][now]){
               B[i][now+1]++;
               now++;
           }
           now--;//下一格在這裡
         }
       }//到這裡結束 now 的左邊將不樣放東西 ,都歸0
       for(int j=now;j>=0;j--){
          B[i][j]=0; 
       }
     }
  }
  genTwo();
   
}
//找出陣列0的地方挑一個變成空白
void genTwo(){
   int zero = 0;//找幾個0
   for(int i=0;i<4;i++){
      for(int j=0;j<4;j++){
         if(B[i][j]==0) zero++;
      }
   }
   int ans =int(random(zero));//ex 有10隔，找到一到九格
   for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
       if(B[i][j]==0){
          if(ans==0){
             B[i][j]=1;//2的1刺方式2
             return ;
          }else ans--;//倒數用掉一個 慢慢找到是哪一個
       }
    }
   }
}
void setup(){
   
    myPort = new Serial(this,"COM3",9600);
   size(410,410); 
}
void draw(){
  background(188,174,162);//色彩用滴館
  for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
        int id=B[i][j];//對應的代碼
        fill(c[id]);
        //fill(206,194,185);
        noStroke();//N 黑線
        rect(j*100+5,i*100+5,90,90,5); //湖矯飾5
        fill(c2[id]);
        textAlign(CENTER,CENTER);
        textSize(60);
        text(N[id],j*100+55,i*100+55);
     }
  }
}
