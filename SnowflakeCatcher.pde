Snowflake [] snow;
int checkBackground = color(0, 0, 0);



void setup()
{
  //your code here
  
  size(500, 500);
  snow = new Snowflake[1000];
  frameRate(10);
  for(int i = 0; i < snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
 // background(checkBackground);
 background(0);

}
void draw()
{
  //your code here
  for(int i = 0; i < snow.length; i++)
  {
    snow[i].show();
    snow[i].move();
    snow[i].wrap();
    snow[i].erase();
    snow[i].lookDown();
  }
  mouseDragged();
  
}
void mouseDragged()
{
  //your code here
  if(mousePressed)
  {
    fill(200);
    ellipse(mouseX, mouseY, 10, 10);
  }
  
}


class Snowflake
{
  //class member variable declarations
  int flakeSize;
  int xPos;
  int yPos;
  int fade;
  int barrierSize;

  Snowflake()
  {
    //class member variable initializations
    fade = 250;
    flakeSize = ((int)(Math.random()*7));
    xPos = (int)(Math.random()*width);
    yPos = (int)(Math.random()*(height + 300) - height - 300);

  }
  void show()
  {
    fill(250,250, 250, fade);
    ellipse(xPos, yPos, flakeSize, flakeSize);

  }
  void lookDown()
  {
    //your code here
    if(yPos + flakeSize  != color(0))
    {
      yPos = yPos;
    }
  }
  void erase()
  {
    //your code here
    
    if(mousePressed)
    {
      if(mouseX <= xPos + flakeSize + 10 && mouseX >= xPos - flakeSize - 10 && mouseY <= yPos + flakeSize + 10 && mouseY >= yPos - flakeSize - 10)
      {
        fade = 0;
      }
    }
  }
  void move()
  {
    //your code here
    fade = 0;
    yPos += 1;
    fade = 255;
  }
  void wrap()
  {
    //your code here
    if(yPos % (height + 10) == 0 && yPos > height)
    {
      //fade = 250;
      yPos = (int)(Math.random()*height - height);
    }
  }
}


