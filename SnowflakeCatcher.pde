Snowflake [] snow;

void setup()
{
  //your code here
  size(300, 300);
  background(0, 0, 0);
  snow = new Snowflake[3];
  for(int i = 0; i < snow.length; i++)
  {
    snow[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  for(int i = 0; i < snow.length; i++)
  {
    snow[i].show();
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
  Snowflake()
  {
    //class member variable initializations
  }
  void show()
  {
    //your code here
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
  }
  void wrap()
  {
    //your code here
  }
}


