GameManager gm;

void setup() {
  size(360, 640);
  gm = new GameManager();
}

void draw() {
  background(0);
  gm.genManager();
  gm.move();
  gm.display();
  
}

void keyPressed() {
  if (key != 'g')
   gm.ball.changeDirection();
  else gm.gameOver = false;
}