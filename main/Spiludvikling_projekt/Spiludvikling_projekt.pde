Boosts b = new Boosts();
Collectables c = new Collectables();
Dust[] d;
Hunter h = new Hunter();
Map m;
Pause ps = new Pause();
Player p = new Player();
Screens s = new Screens();
Traps t = new Traps();

import processing.sound.*;  //VIGTIGt - Spillet bruger Processings Sound library. Spillet køres ikke, hvis du ikke har installeret det.
SoundFile bgMusic;          //For at installere: Øverst i Processing, tryk "Sketch" -> "Import Library" -> "Add library" -> søg på "Sound" -> Download "Sound" af The Processing Foundation

boolean isLeft, isRight, isUp, isDown;
boolean goLeft, goRight, goUp, goDown, isStunned = false;
boolean gamePaused = false;
PImage player, hunter, boost, tazer, doorKey, piano, pianoFaldt, bucket, bucketFaldt;
PVector vertical = new PVector(0, 100);
float playerX, playerY, playerCX, playerCY, pSpeed, hunterX, hunterY, hSpeed, deltaX, deltaY;
int startTimer, dustCount;


void setup() {
  m = new Map();
  fullScreen(1);
  cursor(CROSS);
  bgMusic = new SoundFile(this, "baggrundsmusik.wav");  //placeholder musik
  bgMusic.loop();

  startTimer = millis();
  playerX = width*0.1172;            //placeholder for player's spawn position
  playerY = height*0.2083;
  playerCX = playerX+27;
  playerCY = playerY+16;
  pSpeed = 8;
  hunterX = 200;  //placeholder for hunter's spawn position
  hunterY = 200;
  hSpeed = 4;
  deltaX = abs(playerCX - hunterX);
  deltaY = abs(playerCY - hunterY);
  dustCount = floor(height*0.8333);
  d = new Dust[dustCount];
  for (int i = 0; i<d.length; i++) {
    d[i] = new Dust(random(width*0.0020, width*0.9980), random(height*0.0035, height*0.9965), random(width*0.00003906, width*0.0001171), random(height*0.00006944, height*0.0002083), random(70.0, 120.0), floor(random(width*0.001563, width*0.001953)), floor(random(height*0.002778, height*0.00347)));
  }  //Hver støvpartikel kræver mange oplysninger - se Dust () constructoren

  player = loadImage("Jerry.png");     //pic is 53x31 pixels
  hunter = loadImage("Tom.png");       //pic is 55x55 pixels
  boost = loadImage("Boost.png");      //pic is 10x28 pixels
  tazer = loadImage("tazer_ddu.png");  //pic is 20x27 pixels
  doorKey = loadImage("key_ddu.png");  //pic is 16x27 pixels
  piano = loadImage("piano_ddu.png");
  pianoFaldt = loadImage("piano_faldt_xtra.png");
  bucket = loadImage("Bucket_ddu.png");
  bucketFaldt = loadImage("bucket_faldet_ddu.png");
  imageMode(CENTER);
}


void draw() {
  ps.pauseGame();
  if (gamePaused == false) {
    background(255);

    for (int j = 0; j < d.length; j++) {
      d[j].updateDust();

      if (d[j].dustPos.x < 0 - d[j].dustSizeX) {
        d[j].dustPos.x = width + d[j].dustSizeX;
      }
      if (d[j].dustPos.y > height + d[j].dustSizeY) {
        d[j].dustPos.y = 0 - d[j].dustSizeY;
      }
    }
    t.piano(200,300);
    t.bucket(400,300);
    h.hunterRotation();  //kaldes før playerRotation(), fordi flashlight() køres derfra. På den måde dækkes Jægeren af lommelygtens mørke
    p.playerRotation();
    p.movePlayer();
    h.hunterSetMove();
    h.moveHunter();
    m.drawMap();
    b.boost(500, 500);
    c.placeKey();

    fill(130, 255);
    textAlign(LEFT);
    textSize(height*0.0174);
    text("Press 'p' to pause     Press 'o' to unpause", width*0.0117, height*0.03);
    textSize(height*0.008333);
    text(frameCount, width*0.005859, height*0.9896);
    textSize(height*0.0174);
    text("Items: ", width*0.3333, height*0.03);
  }
  s.checkVictory();
}


void keyPressed() {
  p.playerSetMove(keyCode, true);
}

void keyReleased() {
  p.playerSetMove(keyCode, false);
}
