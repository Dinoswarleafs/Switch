class PlatformCreator {
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  float threshold;
  float threshGain;
  float platLengths;
  float gapLengths;
  int seed;
  color pColor;
  boolean isGap;
  boolean isLeft;
  
  PlatformCreator() {
   threshold = Default.pcThreshold;
   threshGain = Default.pcThreshGain;
   platLengths = Default.pcLengths;
   gapLengths = Default.pcGapLengths;
   pColor = color(Default.pcColor);   
   isGap = false;
   isLeft = true;   
  }
  
  float createLength() {
   float platHeight;
   if (isGap) 
    platHeight = gapLengths;
   else 
    platHeight = platLengths;
   float randomNum = random(1);
   
   while (evalRandom(randomNum)) {
    if (isGap)
     platHeight += gapLengths;
    else
     platHeight += platLengths;
     randomNum = random(1);
     println(platforms.size());
   }    
   return platHeight;
  }
  
  void createPlat() {
    platforms.add(new Platform(createLength()));
    if (!isLeft)
    platforms.add(new Platform(createLength(), false));
    if (threshold < .75)
    threshold += threshGain;
  }
  
    void createPlat(float yPos_) {
    platforms.add(new Platform(yPos_, createLength()));
    if (!isLeft)
    platforms.add(new Platform(yPos_, createLength(), false));
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
  
  void setGap(boolean value) {
   isGap = value; 
  }
  
  void setSeed(int seed_) {
   seed = seed_;
   randomSeed(seed);
  }
  
  void setColor(int pColor_){
   pColor = pColor_; 
  }
  
  void setLeft(boolean value) {
   isLeft = value; 
  }
  
}