class GameManager {
  Ball ball;
  PlatformManager lManager;
  PlatformManager rManager;
  Score scoreManager;
  
  GameManager() {
    ball = new Ball();
    lManager = new PlatformManager();
    rManager = new PlatformManager();
    rManager.setColor(255);
    rManager.pCreator.isLeft = false;
    scoreManager = new Score();    
  }
  
  void genManager() {
   lManager.genManager();
   rManager.genManager();
  }
  
  void display() {
   ball.display();
   lManager.display();
   rManager.display();
  }
  
  void move() {
   ball.move();
   lManager.move();
   rManager.move();
  }
  
  
}