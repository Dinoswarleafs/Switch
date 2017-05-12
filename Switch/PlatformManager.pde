class PlatformManager {
  PlatformCreator pCreator;
  PlatformCreator gCreator;
  float speed;
  boolean isEmpty;
  boolean isLeft;

  
  PlatformManager() {
    pCreator = new PlatformCreator();
    gCreator = new PlatformCreator();
    gCreator.setGap(true);
    speed = Default.pmSpeed; 
    isEmpty = true;
    isLeft = true;
  }
  
  void genManager() {
   generatePlat();
   pCreator.removePlat();
   gCreator.removePlat();
   if (gCreator.getLastYPos(gCreator.platforms.size() - 1) > 0)
    isEmpty = true; 
  }
  
  void display() {
   pCreator.display(); 
   //gCreator.display();
  }
  
  void move() {
   pCreator.move(speed);
   gCreator.move(speed);
  }
  
  void generatePlat() {
   if (isEmpty) {
     pCreator.createPlat();
     gCreator.createPlat(pCreator.getLastYPos(pCreator.platforms.size() - 1));
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
     gCreator.setLeft(false);
    }
  }
  
  void setColor(int color_) {
   pCreator.setColor(color_); 
  }
   
}