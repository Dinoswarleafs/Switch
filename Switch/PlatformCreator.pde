class PlatformCreator {
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  float threshold;
  float threshGain;
  float platLengths;
  int seed;
  color pColor;
  
  PlatformCreator() {
   threshold = Default.pcThreshold;
   threshGain = Default.pcThreshGain;
   platLengths = Default.pcLengths;
   pColor = color(Default.pcColor);   
  }
  
  float createLength() {
   float platHeight = 0;
   float randomNum = random(1);
   
   while (evalRandom(randomNum)) {
     platHeight += platLengths;
     randomNum = random(1);
     println(platforms.size());
   }    
   return platHeight;
  }
  
  void createPlat() {
    platforms.add(new Platform(createLength()));
    if (threshold < .75)
    threshold += threshGain;
  }
  
    void createPlat(float yPos_) {
    platforms.add(new Platform(yPos_, createLength()));
    if (threshold < .75)
    threshold += threshGain;
  }
  
  void removePlat() {
   for (int i = 0; i < platforms.size(); i++)
    if (getLastYPos(i) > height)
     platforms.remove(i);
  }
  
  void createGap() {
   platforms.add(new Platform(createLength()));
  }
  
  void move(float speed_) {
   for (Platform platforms : platforms)
    platforms.move(speed_);
  }
  
  void display() {
   for (Platform platforms : platforms) {
    if (platforms.pColor != pColor)
     platforms.setColor(pColor);
    platforms.display();
   }
  }
  
  boolean evalRandom(float randomNum_) {
    if (randomNum_ > threshold) return true;
    else return false;
  }
  
  float getLastYPos() {
    return platforms.get(0).location.y + platforms.get(0).size.y;
  }  
  
  float getLastYPos(int index) {
    return platforms.get(index).location.y + platforms.get(index).size.y;
  }    
  
  void setSeed(int seed_) {
   seed = seed_;
   randomSeed(seed);
  }
  
  void setColor(int pColor_){
   pColor = pColor_; 
  }
  
}