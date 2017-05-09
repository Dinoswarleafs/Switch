Ball tBall;

void setup() {
  size(360, 640);
  tBall = new Ball();
}

void draw() {
  background(0);
  tBall.move();
  tBall.display();
  println(tBall.direction);
}

void keyPressed() {
  tBall.changeDirection();
}