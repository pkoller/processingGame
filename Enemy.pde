

class Enemy extends Viereck
{
 Enemy()
 {
    size = 50;
    position = new PVector(200,50);
    myColor = color(255,0,0);
    direction = new PVector(0,0);
    speed = 5;
 }
 
 void setTargetDirection(PVector player)
 {
   direction = player.copy().sub(position).normalize();
 }
}