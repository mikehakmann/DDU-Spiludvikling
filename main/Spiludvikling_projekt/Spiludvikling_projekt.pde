Boosts b = new Boosts();
Collectables c = new Collectables();
Dust[] d;
Hunter h = new Hunter();
Map m;
Pause ps = new Pause();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

import processing.sound.*;  //VIGTIGt - Spillet bruger Processings Sound library. Spillet køres ikke, hvis du ikke har installeret det.
SoundFile bgMusic;          //For at installere: Øverst i Processing, tryk "Sketch" -> "Import Library" -> "Add library" -> søg på "Sound" -> Download "Sound" af The Processing Foundation

boolean isLeft, isRight, isUp, isDown;
boolean goLeft, goRight, goUp, goDown, isTazed = false;
boolean gamePaused = false;
PImage player, hunter, boost, tazer, floor;
PVector vertical = new PVector(0, 100);
float playerX, playerY, pSpeed, hunterX, hunterY, hSpeed, deltaX, deltaY;
int dustCount;


void setup() {
  m = new Map();
  fullScreen(1);
  cursor(CROSS);
  //bgMusic = new SoundFile(this, "bagmusic.wav");  //placeholder musik
  //bgMusic.loop();
  playerX = 300;            //placeholder for player's spawn position
  playerY = 300;
  pSpeed = 8;
  hunterX = 200;  //placeholder for hunter's spawn position
  hunterY = 200;
  hSpeed = 4;
  deltaX = abs(playerX+27 - hunterX);
  deltaY = abs(playerY+16 - hunterY);
  dustCount = floor(height*0.8333);
  d = new Dust[dustCount];
  for (int i = 0; i<d.length; i++) {
    d[i] = new Dust(random(width*0.0020, width*0.9980), random(height*0.0035, height*0.9965), random(width*0.00003906, width*0.0001171), random(height*0.00006944, height*0.0002083), random(70.0, 120.0), floor(random(width*0.001563, width*0.001953)), floor(random(height*0.002778, height*0.00347)));
  }  //Hver støvpartikel kræver mange oplysninger - se Dust () constructoren

  player = loadImage("Jerry.png");     //pic is 53x31 pixels
  hunter = loadImage("Tom.png");       //pic is 55x55 pixels
  boost = loadImage("Boost.png");      //pic is 10x28 pixels
  tazer = loadImage("tazer ddu.png");  //pic is 20x27 pixels
  floor = loadImage("floor.png");      //pic is 3000x3000 pixels
  imageMode(CENTER);
}


void draw() {
  ps.pauseGame();
  if (gamePaused == false) {



    image(floor, width/2, height/2);    //background

    for (int j = 0; j < d.length; j++) {
      d[j].updateDust();

      if (d[j].dustPos.x < 0 - d[j].dustSizeX) {
        d[j].dustPos.x = width + d[j].dustSizeX;
      }
      if (d[j].dustPos.y > height + d[j].dustSizeY) {
        d[j].dustPos.y = 0 - d[j].dustSizeY;
      }
    }
    h.hunterRotation();  //kaldes før playerRotation(), fordi flashlight() køres derfra. På den måde dækkes Jægeren af lommelygtens mørke
    p.playerRotation();
    p.movePlayer();
    h.hunterSetMove();
    h.moveHunter();
  }
  m.drawMap();
  b.speedBoost(500, 500);
  fill(130);
  text("Press 'p' to pause     Press 'o' to unpause", width*0.0117, height*0.0208);
  textSize(12);
  text(frameCount, width*0.005859, height*0.9896);
}


void keyPressed() {
  p.playerSetMove(keyCode, true);
}

void keyReleased() {
  p.playerSetMove(keyCode, false);
}
