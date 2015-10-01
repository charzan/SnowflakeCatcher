Snowflake [] snow;
//int backgroundColor = color(0, 0, 0);

void setup()
{
  //your code here
  size(500, 500);
  
  snow = new Snowflake[1000];
  frameRate(100);
  for(int i = 0; i < snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
   background(0, 0, 0);
  //background(backgroundColor);
  for(int i = 0; i < snow.length; i++)
  {
    snow[i].show();
    snow[i].move();
    snow[i].wrap();
    snow[i].erase();
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
  int fade;

  Snowflake()
  {
    //class member variable initializations
    fade = 250;
    flakeSize = ((int)(Math.random()*7));
    xPos      = (int)(Math.random()*width);
    yPos      = (int)(Math.random()*(height + 300) - height - 300);
  }
  void show()
  {
    //your code here
    fill(250,250, 250, fade);
    ellipse(xPos, yPos, flakeSize, flakeSize);

  }
  void lookDown()
  {
    //your code here


  }
  void erase()
  {
    //your code here
    if(mouseX <= xPos + flakeSize + 10 && mouseX >= xPos - flakeSize - 10 && mouseY <= yPos + flakeSize + 10 && mouseY >= yPos - flakeSize - 10)
    {
      fade = 0;
    }


    
  }
  void move()
  {
    //your code here
    yPos += 1;
  }
  void wrap()
  {
    //your code here
    if(yPos % (height + 10) == 0 && yPos > height)
    {
      yPos = (int)(Math.random()*height - height);
    }
  }
}


