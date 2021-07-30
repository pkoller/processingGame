

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
  score = 0;
}
 
void draw() {    
  background(0);

  e.setTargetDirection(p.position);
  e.move();
  e.draw();
  
  p.move();
  p.draw();
  
  score++;
  
  fill(255,255,255);
  text("score: " + score,10,10);
  text("highscore" + highscore,200,10);
   
  if(score%150 == 0) // increase difficulty
    e.speed++;
     
  if(e.intersects(p))  // check for gameover
  {
    if(highscore< score) highscore = score;
    init();
  }
 }
 
 void keyPressed()
 {
   p.keyPressed();
 }
 void keyReleased()
 {
   p.keyReleased();
 }
 