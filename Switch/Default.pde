static class Default { 
 // Default Ball Variables
 static float ballLocX = 40;
 static float ballLocY = 100;
 static float ballSizeX = 20;
 static float ballSizeY = 20;
 static color ballColor = 255;
 
 // Default Plat Variables
 // Location is point of generation
 // Sizes are negative so they are made upwards, gradually show on screen
 static float platLocX = ballLocX - ballSizeX / 2;
 static float platLocY = 0;
 static float platSizeX = -20;
 static float platSizeY = -1000;
 static color platColor = 128;
 
 // Plat Creator Variables
 static float pcThreshold = .05;
 static float pcThreshGain = .0005;
 static float pcColor = 128;
 static float pcLengths = 100;
 
 // Plat Manager Variables
 static float pmSpeed = 20;
 
}