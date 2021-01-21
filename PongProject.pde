final int SCREENX = 320;
final int SCREENY = 240;
final int PADDLEHEIGHT = 15;
final int PADDLEWIDTH = 50;
final int MARGIN = 10;
Player thePlayer;
Ball theBall;
Player theComputer;
PFont myFont;
void settings() {
  size(SCREENX, SCREENY);
}
void setup() {
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  theBall = new Ball();
  theComputer = new Player(0+MARGIN+PADDLEHEIGHT);
  ellipseMode(RADIUS);
  myFont = loadFont("Serif.plain-18.vlw");
  textFont(myFont);
}
void draw() {
  background(0);
  thePlayer.move(mouseX);
  theComputer.compMoving();
  theBall.move();
  theBall.collide(thePlayer);
  theBall.collide1(theComputer);
  thePlayer.draw();
  theBall.draw();
  theComputer.draw();
   text("Player: " + thePlayer.playerWins, 20, 70);
  text("Computer: " + thePlayer.computerWins, 20, 90);
  if(thePlayer.computerWins>=3) {
    text("GAME OVER!", SCREENY/2, 100);
  } else if (thePlayer.playerWins>=3) {
    text("YOU WIN!", SCREENY/2, 100);
  }
}
 

void mousePressed() {
  thePlayer.winChecks(theBall.y);
  theBall.reset();
}
