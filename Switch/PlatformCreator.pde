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
     println(randomNum + " " + threshold);
   }    
   return platHeight;
  }
  
  void createPlat() {
    platforms.add(new Platform(createLength()));
    if (threshold < .75)
    threshold += threshGain;
  }
  
  void createGap() {
   platforms.add(new Platform(createLength()));
  }
  
  void move(float speed_) {
   for (Platform platforms : platforms)
    platforms.move(speed_);
  }
  
  void display() {
   for (Platform platforms : platforms)
    platforms.display();
  }
  
  boolean evalRandom(float randomNum_) {
    if (randomNum_ > threshold) return true;
    else return false;
  }
    
  
  void setSeed(int seed_) {
   seed = seed_;
   randomSeed(seed);
  }
  
}