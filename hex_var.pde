int tile = 41;
color c0 = color(0),
      c1;

void setup()
{
  size(820, 615);
  noStroke();
  newColor();
}


void draw()
{
  for (int x = 0; x < width; x += tile)
  {
    for (int y = 0; y < height; y += tile)
    {
      if (int(random(2)) == 0) fill(c0);
      else fill(c1);
      rect(x, y, tile, tile);
    }
  }
  
  for (int x = 0; x < width + 1; x += tile)
  {
    for (int y = 0; y < height + 1; y += tile)
    {
      if ((x+y)%2 ==0) fill(c0);
      else fill(c1);
      ellipse(x, y, tile, tile);
    }
  }
  
  noLoop();
}


void mouseReleased()  //new pattern
{
  loop();
}


void keyPressed()
{
  if (key == ' ')  //new pattern with new color
  {
    newColor();
    loop();
  }
}


void newColor()  //choose a random color
{
  c1 = color(random(255), random(255), random(255));
}