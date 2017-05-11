class PlatformCreator {
  ArrayList<Platform> platforms = new ArrayList<Platform>();
  float threshold;
  float threshGain;
  float platLengths;
  int seed;
  color pColor;
  
  PlatformCreator() {
   threshold = Default.pmThreshold;
   threshGain = Default.pmThreshGain;
   platLengths = Default.pmLengths;
   pColor = color(Default.pmColor);   
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
  
  void move() {
   for (Platform platforms : platforms)
    platforms.move(20);
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