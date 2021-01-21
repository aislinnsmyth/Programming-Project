class Alien {            // initializing constants for alien
  PImage myimage;
  PImage explodingimage;
  float x;
  float y;
  float dx;
  float dy;
  int count;
  int alienStatus;
  Bomb theBomb;

  Alien(int xpos, int ypos, PImage alienImage, PImage explosion) {
    theBomb = new Bomb((int)x, (int)y);
    myimage = alienImage;
    explodingimage = explosion;
    x = xpos;          //x position of aliens
    y = ypos;          // y position of aliens
    dx = 1;            // speed of aliens x 
    dy = 1;            // speed of aliens y
    count = 0;
    alienStatus = 31;
  }

  void move() {
    if (x == SCREENX- 30|| x == 0) {
      if (count < 30) {
        y += dy;
        count++;
      } else {
        count = 0;
        dx = -dx;
        if (x > 50) {
          x = SCREENX- 31;
        } else {
          x = 1;
        }
      }
    } else {
      x += dx;
      dy = 1;
    }
  }

  void draw() {
    if (alienStatus < 30) {        // draw for the exploding image
      alienStatus++;                // if alien status is less than 30 then explode
      image(explodingimage, x, y );
    } else if (alienStatus == 31) {    //else if alien status is more then 31 does not explode
      image(myimage, x, y);
    }
  }

  void explode () {
    alienStatus = 0;        // one the alien "explodes" bring status back to 0
  }

  Bomb getBomb() {
    if (theBomb != null) {
      return theBomb;
    } else {
      return null;
    }
  }
  void init_bomb () {
    theBomb = new Bomb((int) x, (int) y);
  }
}
