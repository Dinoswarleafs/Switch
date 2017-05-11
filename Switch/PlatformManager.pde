class PlatformManager {
  PlatformCreator pCreator;
  PlatformCreator gCreator;
  float speed;
  boolean isEmpty;
  
  PlatformManager() {
    pCreator = new PlatformCreator();
    gCreator = new PlatformCreator();
    speed = Default.pmSpeed; 
    isEmpty = true;
  }
  
  void genManager() {
   generatePlat();
   generateGap();
   for (int i = 0; i < pCreator.platforms.size(); i++)
    if (pCreator.platforms.get(i).topEdge() > height)
     pCreator.platforms.remove(i);  
   if (gCreator.platforms.get(0).topEdge() == 0)
    isEmpty = true;
  }
  
  void display() {
   pCreator.display(); 
  }
  
  void move() {
   pCreator.move(speed);
   gCreator.move(speed);
  }
  
  void generatePlat() {
   if (isEmpty) {
     gCreator.createPlat();
     isEmpty = false;
   }
  }
  
  void generateGap() {
   if (isEndOnScreen())
    pCreator.createGap();
  }
  
  boolean isEndOnScreen() {
     if (pCreator.platforms.get(0).topEdge() >= 0)
     return true;
    return false; 
  }
  
  void setSpeed(float speed_) {
   speed =  speed_;
  }
  
  
}