

class Player extends Viereck{

  void keyPressed()
  {
    if(key == 'w')
      direction.y = -1;
  }
  void keyReleased()
  {
    if(key == 'w')
      direction.y = 0;
  }
}