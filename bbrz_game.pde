

int highscore = 0;
int score = 0;

Player p;
Enemy e;

void setup(){
  // define renderer
  size(500, 500, P2D);

  frameRate(60);
  init();
}

void init()
{
  p = new Player();
  e = new Enemy();
}
 
void draw() {    
  background(0);

  e.setTargetDirection(p.position);
  e.move();
  e.draw();
  
  p.move();
  p.draw();
  
  if(e.intersects(p))
  {
    //gameover
    init();
  }
   //v.velocity.add(new PVector(mouseX,0));
 }
 
 void keyPressed()
 {
   p.keyPressed();
 }
 void keyReleased()
 {
   p.keyReleased();
 }
 