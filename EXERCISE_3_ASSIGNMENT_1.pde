int a = 0;
int a1 = -60;
void setup(){
  size(400,400);
  noStroke();
}
void draw(){
  background(180);
  fill(235,0,0);
  rect(a, 80, 60, 60);
  if(a>=350)
  {
    fill(235, 0, 0);
    rect(a1, 80, 60, 60);
    a1++;
  }
  if(a1==0)
  {
    a1 = -60;
    a=0;
  }
  a++;
}
