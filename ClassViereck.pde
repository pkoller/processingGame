
class Viereck
{
  Viereck()
  {
    size = 50;
    position = new PVector(10,50);
    myColor = color(255,0,0);
    direction = new PVector(0,0);
    speed = 6;
    img = loadImage("character.png");
  }
  void draw()
  {
    fill(myColor);
    rect(position.x, position.y, size, size);
    image(img, position.x, position.y, size, size);
  }
  
  void move()
  {
    PVector nextStep = direction.copy().mult(speed);
    
    if((position.x + size + nextStep.x) > width)
      nextStep.x = 0;
    if( (position.x + nextStep.x) < 0)
      nextStep.x = 0;
      
    if((position.y+ size+ nextStep.y) > height)
      nextStep.y = 0;
    if((position.y + nextStep.y) <0)
      nextStep.y = 0;
    
   position.add(nextStep);
  }
  
  boolean intersects(Viereck other)
  {
    boolean isAbove = (other.position.y + other.size) < position.y;
    boolean isLeft = (other.position.x + other.size) < position.x;
    boolean isRight =  (position.x + size) < other.position.x;
    boolean isUnder = (position.y + size) < other.position.y;
    
    if(isAbove)
      return false;
    if(isLeft)
      return false;
    if(isRight)
      return false;
    if(isUnder)
      return false;
      
  return true;
  }
  
  int size;
  PVector position;
  color myColor;
  float speed;
  PVector direction;
  PImage img;
}