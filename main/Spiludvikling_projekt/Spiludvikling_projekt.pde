Collectables c = new Collectables();
Dust[] d;
Hunter h = new Hunter();
Map m = new Map();
Pause ps = new Pause();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

import processing.sound.*;  //VIGTIGt - Spillet bruger Processings Sound library. Spillet køres ikke, hvis du ikke har installeret det.
SoundFile bgMusic;          //For at installere: Øverst i Processing, tryk "Sketch" -> "Import Library" -> "Add library" -> søg på "Sound" -> Download "Sound" af The Processing Foundation

boolean isLeft, isRight, isUp, isDown;
boolean gamePaused = false;
PImage player, hunter;
PVector vertical = new PVector(0, 100);
float playerX, playerY, pSpeed, hunterX, hunterY, hSpeed;
int dustCount;


void setup() {
  fullScreen(1);
  //bgMusic = new SoundFile(this, "/*bgMusic i .wav format*/");
  //bgMusic.loop();
  playerX = width/2.3;            //placeholder for player's spawn position
  playerY = height/2;
  pSpeed = 8;
  hunterX = random(200, 2000);  //placeholder for hunter's spawn position
  hunterY = 500;
  dustCount = floor(height*0.8333);
  d = new Dust[dustCount];
  for (int i = 0; i<d.length; i++) {
    d[i] = new Dust(random(width*0.0020, width*0.9980), random(height*0.0035, height*0.9965), random(width*0.00003906, width*0.0001171), random(height*0.00006944, height*0.0002083), random(70.0, 120.0), floor(random(width*0.001563, width*0.001953)), floor(random(height*0.002778, height*0.00347)));
  }

  player = loadImage("Jerry.png");  //placeholder pic is 53x31 pixels
  hunter = loadImage("Tom.png");  //placeholder pic is 250x260 pixels

  imageMode(CENTER);
}


void draw() {
  ps.pauseGame();
  if (gamePaused == false) {
    
    background(255);
    fill(130);
    text("Press 'p' to pause     Press 'o' to unpause", width*0.0117, height*0.0208);
    textSize(12);
    text(frameCount, width*0.005859, height*0.9896);
    
    
    p.playerRotation();
    h.hunterRotation();

    for (int j = 0; j < d.length; j++) {
      d[j].updateDust();

      if (d[j].dustPos.x < 0 - d[j].dustSizeX) {
        d[j].dustPos.x = width + d[j].dustSizeX;
      }
      if (d[j].dustPos.y > height + d[j].dustSizeY) {
        d[j].dustPos.y = 0 - d[j].dustSizeY;
      }
    }
    
    p.movePlayer();
    
  }
  m.drawMap();
  
}


void keyPressed() {
  p.playerSetMove(keyCode, true);
}

void keyReleased() {
  p.playerSetMove(keyCode, false);
}
