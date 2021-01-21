int a=0;
int a1=-60;
int b=340;
int b1=400;
void setup(){
  size(400,400);
  noStroke();
}
void draw(){
  background(255);
  fill(235, 0, 0);
  rect(a, 80, 60, 60);
  fill(255, 180, 0);
  rect(b, 150, 60, 60);
  if(a>=350)
  {
     fill(235, 0, 0);
     rect(a1, 80, 60, 60);
     fill(255, 180, 0);
     rect(b1, 150, 60, 60);
     b1--;
     a1++;
  }
  if(a1== 0)
  {
    a1 = -60;
    a=0;
    b=340;
    b1=400;
    
  }
  a++;
  b--;
}
