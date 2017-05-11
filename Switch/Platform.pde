class Platform {
  
 PVector location;
 PVector size;
 color pColor;
 
 Platform(float sizeY_) {
  location = new PVector(Default.platLocX, Default.platLocY); 
  size     = new PVector(Default.platSizeX, sizeY_ * -1);
  pColor   = color(Default.platColor);  
 }
 
 Platform(float locationX_, float locationY_, float sizeX_, float sizeY_) {
  location = new PVector(locationX_, locationY_); 
  size     = new PVector(sizeX_ * -1, sizeY_ * -1);
  pColor   = color(Default.platColor);   
 }
 
 void display() {
  fill(pColor);
  rect(location.x, location.y, size.x, size.y); 
 }
 
 void move(float speed_) {
  float speed = speed_;
  location.y += speed; 
 }
 
 void setColor(color pColor_) {
  pColor = color(pColor_); 
 }
 
 float topEdge() {
  return location.y + size.y; 
 }
  
}