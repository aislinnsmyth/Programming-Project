class Bomb {
  Bomb theBomb;

  float   bomb_x;
  float    bomb_y;
  int radius = 10;
  color bulletColor= color(200, 350, 180);

  Bomb(int x, int y) {
    bomb_x = x + 15;
    bomb_y = y + 15;
  }

  void move() {
    bomb_y+=4;
  }

  void draw() {
    fill(bulletColor);
    ellipse(bomb_x, bomb_y, radius, radius);
  }
  boolean offScreen() {
    if (bomb_y > SCREENY) {
      return true;
    } else {
      return false;
    }
  }
  boolean collide(Player thePlayer) {
    if ((bomb_x >= thePlayer.xpos && bomb_x <= (thePlayer.xpos + PADDLEWIDTH)) && bomb_y >= thePlayer.ypos && bomb_y <= (thePlayer.ypos+PADDLEHEIGHT)) {
      return true;
    } else {
      return false;
    }
  }
}
