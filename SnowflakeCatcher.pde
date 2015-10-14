Snowflake [] snow;




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
  background(0, 0, 0);

 // background(checkBackground);



}
void draw()
{
  //your code here
  
  for(int i = 0; i < snow.length; i++)
  {
    snow[i].erase();
    snow[i].move();
    snow[i].show();
    
 
    snow[i].wrap();

    snow[i].lookDown();
  }  
}

void mouseDragged()
{
  //your code here
  if(mousePressed)
  {
    
    fill(130, 255, 255);
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
  boolean isMoving; 

  Snowflake()
  {
    //class member variable initializations
    isMoving = true;
    fade = 250;
    flakeSize = ((int)(Math.random()*7));
    xPos = (int)(Math.random()*width);
    yPos = (int)(Math.random()*(height + 300) - height - 300);
    

  }


  void show()
  {
    fill(255, 255, 255, fade);

    ellipse(xPos, yPos, flakeSize, flakeSize);

  }


  void lookDown()
  {
    //your code here
    if((yPos > flakeSize && yPos < height) && get(xPos, yPos +  flakeSize ) != color(0, 0, 0))
    {
      System.out.println(yPos + flakeSize + " " + get(xPos, yPos +  flakeSize ));
      isMoving = false;
    }
  }

  void erase()
  {
    fill(0, 0, 0, fade);
    ellipse(xPos - 1, yPos - 1, flakeSize + 2, flakeSize + 2);

  /*if(mousePressed == false)
    {
      if(mouseX <= xPos + flakeSize + 10 && mouseX >= xPos - flakeSize - 10 && mouseY <= yPos + flakeSize + 10 && mouseY >= yPos - flakeSize - 10)
      {
        fade = 0;
      }
    }*/

  }

  void move()
  {
    //fade = 255;
    if(isMoving == true)
    {
       yPos += 1;
    }
   
    //fade = 0;
  }
  void wrap()
  {
    //your code here
    if(yPos % (height + 10) == 0 && yPos > height)
    {
      fade = 255;
      isMoving = true;
      yPos = (int)(Math.random()*height - height);
    }
  }
}


