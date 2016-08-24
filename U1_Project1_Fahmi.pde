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
  background(0, 0, 0); //still trying to decide on what background colour would fit
  fill(0, 255, 0);
  image(img, x, y, 100/2, 100/2);
  rect(0, 600, 1440, 300);
  rect(0, 0, 1440, 300);
{
    {
    if (x >= width)
    image(img, 0, 0, 2880/2, 1800/2);
    img = loadImage("YPYS.gif"); 
    {

  }
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      y = y - 3;
    }
    else if (keyCode == DOWN)
    {
      y = y + 3;
    }
    {
      if (keyCode == RIGHT)
      {
        x = x + 15;
      }
      else if (keyCode == LEFT)
      {
        x = x - 3;
      }
    }
  }
  }
}
}