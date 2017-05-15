class GameManager {
  Ball ball;
  PlatformManager lManager;
  PlatformManager rManager;
  Score scoreManager;
  float speed;
  boolean gameOver;
  
  GameManager() {
    ball = new Ball();
    lManager = new PlatformManager();
    rManager = new PlatformManager();
    rManager.setColor(255);
    rManager.setLeft(false);
    scoreManager = new Score();
    speed = Default.pmSpeed;
    gameOver = true;
  }
  
  void genManager() {
   if (rManager.isEmpty) 
    lManager.genManager();
   if (lManager.isEmpty) 
    rManager.genManager();
   scoreManager.setScore(lManager.platAmount + rManager.platAmount); 
   speed = ((lManager.platAmount + rManager.platAmount) / 4) + 20;
   lManager.setSpeed(speed);
   rManager.setSpeed(speed);
   ball.setSpeed(speed * 2);
   println(lManager.speed);
  }
  
  void display() {
   ball.display();
   lManager.display();
   rManager.display();
  }
  
  void move() {
    if (!gameOver) { 
     ball.move();
     lManager.move();
     rManager.move();     
   }
  }
  
  
}