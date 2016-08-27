int x = 0; 
int y = 500; 
int xDirection = 1; 
int yDirection =1;
PImage img;



/* 
 I'm trying to use "x>=x" in my maze so that if the player leads the circle/cookie into
 a wall, another image or GIF pops up and they'll have to start over again. 
 */
void setup()
{
  img = loadImage("cookie.png");
  fullScreen();
}

void draw()
{
  DrawCookieMove();
  background(0, 0, 0); //still trying to decide on what background colour would fit
  fill(0, 255, 0);
  image(img, x, y, 100/2, 100/2);
  rect(0, 600, 1440, 300);
  rect(0, 0, 1440, 300);
  rect(400, 350, 100, 250);
  rect(575, 475, 100, 125);
  rect(575, 300, 100, 125);
  rect(750, 300, 100, 250);
  rect(925, 350, 100, 250);
  rect(1100, 475, 100, 125);
  rect(1100, 300, 100, 125);
}

void DrawCookieMove()
{

  if (key == CODED)
  {
    if (keyCode == UP)
    {
      y = y - 3;
    } else if (keyCode == DOWN)
    {
      y = y + 3;
    }
    {
      if (keyCode == RIGHT)
      {
        x = x + 3;
      } else if (keyCode == LEFT)
      {
        x = x - 3;
      }
    }
  }
}