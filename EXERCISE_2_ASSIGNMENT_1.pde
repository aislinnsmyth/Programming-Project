int a;
void setup(){
  size(400,400);
  noStroke();
  fill(235, 0, 0);
  a=0;
}
void draw(){
  background(255);
  rect(a, 80, 60, 60);
  if(a++>=399)
  {
     a=0;
  }
}
