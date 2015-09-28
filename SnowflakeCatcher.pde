Snowflake [] snow;

void setup()
{
  //your code here
  size(1000, 1000);
  background(0, 0, 0);
  snow = new Snowflake[5000];
  for(int i = 0; i < snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
   //background(0, 0, 0);
  for(int i = 0; i < snow.length; i++)
  {
    snow[i].show();
    snow[i].move();
    snow[i].wrap();
  }
  
}
void mouseDragged()
{
  //your code here
  if(mousePressed)
  {
    stroke(0);
    fill(255, 0, 0);
    ellipse(mouseX, mouseY, 25, 25);

  }
}

class Snowflake
{
  //class member variable declarations
  int flakeSize;
  int xPos;
  int yPos;

  Snowflake()
  {
    //class member variable initializations
    flakeSize = ((int)(Math.random()*7));
    xPos = (int)(Math.random()*1000);
    yPos = (int)(Math.random()*1200 - 1200);
  }
  void show()
  {
    //your code here
    fill(250,0, 0);
    ellipse(xPos, yPos, flakeSize, flakeSize);

  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    //your code here
    yPos += 1;
  }
  void wrap()
  {
    //your code here
    if(yPos % 325 == 0 && yPos > 300)
    {
      yPos = (int)(Math.random()*height + 200 - height + 200);
    }
  }
}


