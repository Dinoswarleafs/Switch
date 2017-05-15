class Ball {
 PVector location;
 PVector size;
 color bColor;
 char direction;
 float speed;
 
 Ball() {
  location = new PVector(Default.ballLocX, height - Default.ballLocY);
  size     = new PVector(Default.ballSizeX, Default.ballSizeY);
  bColor   = color(255);
  direction = '_';
 }
 
 void display() {
  fill(bColor);
  ellipse(location.x, location.y, size.x, size.y);
 }
 
 void move() {
  if (direction == 'r' && location.x < width - Default.ballLocX) 
   location.x += 40;
  if (direction == 'l' && location.x > Default.ballLocX) 
   location.x -= 40;   
  if (location.x == Default.ballLocX || location.x == width - Default.ballLocX && direction != '_')
   direction = '_';
 }
 
 void changeDirection() {
  if (location.x == Default.ballLocX && direction == '_')
   direction = 'r';
  else if (location.x == width - Default.ballLocX && direction == '_')
   direction = 'l';
 } 
 
 void setSpeed(float speed_) {
  speed = speed_; 
 }
 
 float getLeftEdge() {
  return location.x - size.x / 2; 
 }
 
 float getRightEdge() {
  return location.x + size.x / 2; 
 }
 
}