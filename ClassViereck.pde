
class Viereck
{
  Viereck()
  {
    size = 50;
    position = new PVector(10,50);
    myColor = color(255,0,0);
    direction = new PVector(0,0);
    speed = 6;
  }
  void draw()
  {
    fill(myColor);
    rect(position.x, position.y, size, size);
  }
  
  void move()
  {
    position.add(direction.copy().mult(speed));
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
}