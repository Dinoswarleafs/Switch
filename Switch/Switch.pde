Ball tBall;
PlatformCreator testPC;

void setup() {
  size(360, 640);
  tBall = new Ball();
  testPC = new PlatformCreator();
}

void draw() {
  background(0);
  tBall.move();
  tBall.display();
  testPC.move();
  testPC.display();
}

void keyPressed() {
  if (key != 'f') tBall.changeDirection();
  else testPC.createPlat();
}