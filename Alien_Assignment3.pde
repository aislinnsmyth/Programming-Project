final int SCREENX = 600;
final int SCREENY = 600;
final int PADDLEHEIGHT = 15;
final int PADDLEWIDTH = 50;
final int MARGIN = 10;
int speedX=1;
int speedY = 1;
int bombCount;
Player thePlayer;
Bullet theBullet;
Alien theAlien;
PImage alienImage;
PImage explosion;
int count;

Alien aliens [];

void settings() {
  size(SCREENX, SCREENY);
}

void setup() {
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  theBullet = new Bullet(thePlayer);
  ellipseMode(RADIUS);
  alienImage= loadImage("spacer.gif");    // initialize spacer gif
  explosion = loadImage("exploding.GIF");  //initializes exploding gif
  aliens = new Alien[10];        // initializes the array 10 aliens
  noStroke();
  init_array(aliens, alienImage);    // alien array
  count = 0;
}

void draw() {
  background(255);

  if (aliens[bombCount]. getBomb().collide(thePlayer)) {
    fill(0);
    text("Game Over!", SCREENX/2-50, SCREENY/2-30);
  } else {
    if (aliens[bombCount].getBomb().offScreen()) {
      aliens[bombCount].theBomb = null;
    }
    if (aliens[bombCount].getBomb()!=null&&aliens[bombCount].alienStatus==31) {
      aliens[bombCount].getBomb().move();
      aliens[bombCount].getBomb().draw();
    }

    if (aliens[bombCount].getBomb().offScreen()||aliens[bombCount].alienStatus!=31) {
      bombCount++;
        if (bombCount == 10) {
        bombCount = 0;
      }
      aliens[bombCount].init_bomb();
    }

    thePlayer.move(mouseX);
    thePlayer.draw();
    theBullet.move();
    theBullet.draw();
    theBullet.collide();
    move_array(aliens);    //references downwards 
    draw_array(aliens);     // references downwards
  }
}

void init_array(Alien aliens[], PImage alienimage) {
  for (int count=0; count<aliens.length; count++) {
    aliens[count] = new Alien(((count+1)*30)+(count*10), 20, alienimage, explosion);
  }
}

void draw_array (Alien aliens []) {
  for (int i=0; i<aliens.length; i++) {
    aliens[i].draw();
  }
}
void move_array(Alien aliens []) {
  for (int count=0; count<aliens.length; count++) {
    aliens[count].move();
  }
}
void mousePressed() {
  theBullet = new Bullet(thePlayer);
}
