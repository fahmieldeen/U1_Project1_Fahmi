int x = 1; 
int y = 500; 
int xDirection = 1; 
int yDirection =1;

PImage cookie;
PImage DJKhaled;

float cookiewidth = 50;
float cookieheight = 50;

/*
Move the cookie using arrows and try avoiding the walls. I haven't figured out how to
detect the vertical walls but only the horizontal ones. Once you have lead the first 
cookie to its love, press esc and the console shall congratulate you!
*/

/* 
 I'm trying to use "x>=x" in my maze so that if the player leads the circle/cookie into
 a wall, another image or GIF pops up and they'll have to start over again. 
 */
void setup()
{
  cookie = loadImage("cookie.png"); 
  DJKhaled = loadImage("YPYS.gif");
  fullScreen();

}

void draw()
{
  DrawCookieMove(); //movement of cookie
  BoundaryCollision(); //walls of maze 
  background(0, 0, 0); //still trying to decide on what background colour would fit
  fill(0, 255, 0); // colour of walls 
  image(cookie, x, y, cookiewidth, cookieheight); //draws cookie
  image(cookie, 1300, 450, cookiewidth, cookieheight); //cookie's gf 
  //walls of maze
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

void DrawCookieMove() //movement of cookie
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

void BoundaryCollision() //bounderies of maze 
{
  if (y <= 298)
  cookie = loadImage("YPYS.gif");
    image(DJKhaled, 0, 0); 
    
  if (y >= 570)
  cookie = loadImage("YPYS.gif");
    image(DJKhaled, 0, 0);
    
    if (x <= 0)
    cookie = loadImage("YPYS.gif");
    
    if (x > 1200) 
    println("YAY YOU MADE COOKIE LOVE!");
    
}