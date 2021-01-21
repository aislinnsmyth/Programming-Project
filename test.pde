// fixed distances to border

int distX = 900;
int distY = 600;
// data  
int b       = 21;
int bb      = 12;
int bbb     = 88;
int bbbb    = 30;
int bbbbb   = 40;
//
void setup () {
  fullScreen();
  // frameRate(2); // slow down
}
//
void draw () {

  background (0);

  //  red line 
  stroke(2, 255, 2);

  // vertical line 
  line (distX-5, 610, distX+300, 610);
  
  //horizontal line
  line (distX, 610, distX, 410);
   

  stroke(0);

  //
  // vertical output 
  fill(255);
  rect (30+distX, distY, 30, -  b);
  rect (60+distX, distY, 30, - bb);
  rect (90+distX, distY, 30, - bbb);
  rect (120+distX, distY, 30, - bbbb);
  rect (150+distX, distY, 30, - bbbbb);
}
