class Ball {
 PVector location;
 PVector size;
 color bColor;
 char direction;
 
 Ball() {
  location = new PVector(20, height - 40);
  size     = new PVector(20, 20);
  bColor   = color(255);
  direction = '_';
 }
 
 Ball(int locationX_, int locationY_) {
  location = new PVector(locationX_, locationY_);
  size     = new PVector(20, 20);
  bColor   = color(255);
  direction = '_';
 }
 
 Ball(int locationX_, int locationY_, color bColor_) {
  location = new PVector(locationX_, locationY_);
  size     = new PVector(20, 20);
  bColor   = color(bColor_);
  direction = '_';
 } 
 
 Ball(int locationX_, int locationY_, int sizeX_, int sizeY_) {
  location = new PVector(locationX_, locationY_);
  size     = new PVector(sizeX_, sizeY_);
  bColor   = color(255);
  direction = '_';
 }
 
 Ball(int locationX_, int locationY_, int sizeX_, int sizeY_, color bColor_) {
  location = new PVector(locationX_, locationY_);
  size     = new PVector(sizeX_, sizeY_);
  bColor   = color(bColor_);
  direction = '_';
 }
 
 void display() {
  fill(bColor);
  ellipse(location.x, location.y, size.x, size.y);
 }
 
 void move() {
  if (direction == 'r' && location.x < width - 20) 
   location.x += 40;
  if (direction == 'l' && location.x > 20) 
   location.x -= 40;   
  if (location.x == 20 || location.x == width - 20 && direction != '_')
   direction = '_';
 }
 
 void changeDirection() {
  if (location.x == 20 && direction == '_')
   direction = 'r';
  else if (location.x == width - 20 && direction == '_')
   direction = 'l';
 } 
 
 float getLeftEdge() {
  return location.x - size.x / 2; 
 }
 
 float getRightEdge() {
  return location.x + size.x / 2; 
 }
 
}