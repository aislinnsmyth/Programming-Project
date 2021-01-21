class Bullet
{
  float x;
  float y;
  int radius;
  int speed = 4;
  color bulletColor = color(200, 100, 80);

  Bullet(Player thePlayer) {

    x = thePlayer.xpos + 25;
    y = thePlayer.ypos;
    radius = 5;
  }
  void move()
  {
    y-=speed;
  }

  void draw()
  {
    fill(bulletColor);
    ellipse(int(x), int(y), radius, radius);
  }
  void collide() {
    for(int count=0; count < aliens.length; count++) {
      if (y+radius >= aliens[count].y &&
        y-radius<aliens[count].y+25 &&
        x >=aliens[count].x &&
        x <= aliens[count].x+aliens[count].myimage.width) {
        aliens[count].explode();
      }
    }
  }
}
