
// class viereck
// draw()
// move()
// 
// position
// color
// size
// velocity
// speed


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
  
  int size;
  PVector position;
  color myColor;
  float speed;
  PVector direction;
}