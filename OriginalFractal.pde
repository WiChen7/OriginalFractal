public void setup()
{
  size(500, 500);
  background(0);
}

public void draw()
{
  myFractal(250, 250, 5, 5);
}

public void myFractal(int x, int y, int ben, int dexter)
{   
  noFill();
  stroke(0, random(255), random(255));
  ellipse((float)x, (float)y, (float)ben, (float)dexter);
  if (ben < 50)
  {   
    myFractal(x - 25, y - 25, ben * 8, dexter * 8);
    myFractal(x - 25, y + 25, ben * 8, dexter * 8);
    myFractal(x + 25, y - 25, ben * 8, dexter * 8);
    myFractal(x + 25, y + 25, ben * 8, dexter * 8);
  }
}
