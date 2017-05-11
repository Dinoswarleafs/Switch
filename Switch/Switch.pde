Ball tBall;
PlatformManager pManager;

void setup() {
  size(360, 640);
  tBall = new Ball();
  pManager = new PlatformManager();
}

void draw() {
  background(0);
  tBall.move();
  tBall.display();
  pManager.genManager();
  pManager.move();
  pManager.display();
}

void keyPressed() {
  tBall.changeDirection();
}