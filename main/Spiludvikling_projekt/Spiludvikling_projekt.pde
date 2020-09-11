Collectables c = new Collectables();
Hunter h = new Hunter();
Map m = new Map();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

boolean gamePaused = false;


void setup() {
  fullScreen();
  
}


void draw() {
  pauseGame();
  if (gamePaused == false) {
    
    
    
    
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
