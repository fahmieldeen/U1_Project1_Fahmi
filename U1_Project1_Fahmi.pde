int x = 30; 
int y = 30; 
int xDirection = 1; 
int yDirection =1;

void setup()
{
  fullScreen(); 
  background(0, 0, 156);
}

void draw()
{
  fill(0, 255, 0);
  noStroke();
  ellipse(x, y, 50, 50); 
  if (x >= width)
  {
    xDirection = -1;  
  }
  x = x + (xDirection * 10); 
  
  if (x <= 0)
  {
    xDirection = 1; 
  }
  if (y >= height)
  {
    yDirection = -1;  
  }
  y = y + (yDirection * 10); 
  
  if (y <= 0)
  {
    yDirection = 1; 
  }
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      y = y - 7;
    }
    else if (keyCode == DOWN)
    {
      y = y + 7;
    }
    {
      if (keyCode == RIGHT)
      {
        x = x + 7;
      }
      else if (keyCode == LEFT)
      {
        x = x - 7;
      }
    }
    
  }
}
}