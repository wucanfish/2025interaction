//week08_1_2048_part1_for_fill_rect
//File-Prefrence
void setup(){
   size(410,410); 
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){
     for(int j=0;j<4;j++){
        fill(206,194,185);
        noStroke();
        rect(j*100+5,i*100+5,90,90,5); 
     }
  }
}
