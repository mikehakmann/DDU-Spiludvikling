Hunter h;
Map m;
Player p;
Stun s;
Traps t;

boolean gamePaused = false;

void setup() {
  h = new Hunter();
  m = new Map();
  p = new Player();
  s = new Stun();
  t = new Traps();
  
  
  
  
  
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
