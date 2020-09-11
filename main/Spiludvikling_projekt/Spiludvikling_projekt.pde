Collectables c = new Collectables();
Hunter h = new Hunter();
Map m = new Map();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

boolean gamePaused = false;
PImage player;
PImage hunter;
PVector vertical = new PVector(0, 100);


void setup() {
  fullScreen();
  
  
  player = loadImage("player.png");  //placeholder pic is 128x128 pixels
  hunter = loadImage("hunter.png");
  
  imageMode(CENTER);
  
}


void draw() {
  pauseGame();
  if (gamePaused == false) {
    background(0);
    
    p.playerRotation();
    h.hunterRotation();
    
    
    
  }
}


void pauseGame() {
  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      gamePaused = true;
    }
    if (key == 'o' || key == 'O') {
      gamePaused = false;
    }
  }
}
