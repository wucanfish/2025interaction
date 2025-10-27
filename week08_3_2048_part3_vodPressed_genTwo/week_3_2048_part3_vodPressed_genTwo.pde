//week_3_2048_part3_vodPressed_genTwo
//把陣列補齊
color[] c={#CEC2B9,#EFE5DA,#EDE1CA,#EFB37E,#EF7F63,#EF7F63};//2^1,2^2,2^3....
color[] c2={#776E66,#776E66,#776E66,#FDF8F5,#FDF8F5,#FDF8F5};//字色
int [] N={0,2,4,8,16,32,64};//對應數字
int [][] B={{0,0,0,0},{1,2,3,4},{5,0,0,0},{0,0,0,0}};//版子
void keyPressed(){
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
