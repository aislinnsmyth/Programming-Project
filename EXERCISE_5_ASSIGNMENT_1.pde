int a=0;
int a1=-60;
int b=340;
int b1=400;
int y1 = 150;
int y2 = 300;

void setup(){
  size(400,400);
  noStroke();
}
void draw(){
  background(0);
  fill(235, y1, y2);
  rect(a, y1, 60, 60);
  fill(y1, 180, y2);
  rect(b, y2, 60, 60);
  if(a>=350)
  {
     fill(235, y1, y2);
     rect(a1, y1, 60, 60);
     fill(y1, 180, y2);
     rect(b1, y2, 60, 60);
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
  if(a<200)
  {
    y1++;
    y2--;
  }
  else
  {
    y1--;
    y2++;
  }
  a++;
  b--;
}
