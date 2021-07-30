

class Player extends Viereck{

 Player()
 {
    size = 20;
    position = new PVector(100,300);
    myColor = color(0,0,255);
    direction = new PVector(0,0);
    speed = 10;
 }
  void keyPressed()
  {
    if(key == 'w')
      direction.y = -1;
    if(key == 's')
      direction.y = 1;
    if(key == 'a')
      direction.x = -1;
    if(key == 'd')
      direction.x = 1;
  }
  void keyReleased()
  {
    if(key == 'w' && direction.y == -1)
      direction.y = 0;
    if(key == 's' && direction.y == 1)
      direction.y = 0;
    if(key == 'a' && direction.x == -1)
      direction.x = 0;
    if(key == 'd' && direction.x == 1)
      direction.x = 0;
  }
}