Collectables c = new Collectables();
Hunter h = new Hunter();
Map m = new Map();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

boolean gamePaused = false;
PImage player;
PVector vertical = new PVector(0, 100);
int wid = width;
int hei = height;


void setup() {
  fullScreen();
  imageMode(CENTER);
  
  player = loadImage("player.png");  //placeholder pic is 128x128 pixels
  
  
  
}


void draw() {
  pauseGame();
  if (gamePaused == false) {
    p.playerRotation();
    
    
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
