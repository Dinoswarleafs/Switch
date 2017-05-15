class PlatformManager {
  PlatformCreator pCreator;
  float speed;
  boolean isEmpty;
  boolean isLeft;
  int platAmount;

  
  PlatformManager() {
    pCreator = new PlatformCreator();
    speed = Default.pmSpeed; 
    isEmpty = true;
    isLeft = true;
    platAmount = 0;
  }
  
  void genManager() {
   generatePlat();
   pCreator.removePlat();
   if (pCreator.getLastYPos(pCreator.platforms.size() - 1) > 0)
    isEmpty = true; 
  }
  
  void display() {
   pCreator.display(); 
   //gCreator.display();
  }
  
  void move() {
   pCreator.move(speed);
  }
  
  void generatePlat() {
   if (isEmpty) {
     pCreator.createPlat();
     platAmount++;
     isEmpty = false;
   }
  }
  
  void setSpeed(float speed_) {
   speed =  speed_;
  }
  
  void setLeft(boolean value) {
   isLeft = value; 
    if (!isLeft) {
     pCreator.setLeft(false);
    }
  }
  
  void setColor(int color_) {
   pCreator.setColor(color_); 
  }
   
}