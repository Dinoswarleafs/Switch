class Platform {
  
 PVector location;
 PVector size;
 color pColor;
 
 Platform(float sizeY_) {
  location = new PVector(Default.platLocX, Default.platLocY); 
  size     = new PVector(Default.platSizeX, sizeY_ * -1);
  pColor   = color(Default.platColor);  
 }
 
 Platform(float locationY_, float sizeY_) {
  location = new PVector(Default.platLocX, locationY_); 
  size     = new PVector(Default.platSizeX * -1, sizeY_ * -1);
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
  
}