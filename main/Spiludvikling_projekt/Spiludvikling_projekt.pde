Collectables c = new Collectables();
Dust[] d;
Hunter h = new Hunter();
Map m = new Map();
Pause ps = new Pause();
Player p = new Player();
Stun s = new Stun();
Traps t = new Traps();

boolean gamePaused = false;
PImage player;
PImage hunter;
PVector vertical = new PVector(0, 100);
int dustCount = 700;


void setup() {
  fullScreen();
  d = new Dust[dustCount];
  for (int i = 0; i<d.length; i++) {
    d[i] = new Dust(random(5.0, width-5.0), random(5.0, height-5.0), random(0.1, 0.3), random(70.0, 120.0), floor(random(4, 5)));  //giver alle bolde tilfældige start-positioner og -hastigheder
  }

  player = loadImage("player.png");  //placeholder pic is 128x128 pixels
  hunter = loadImage("hunter.png");  //placeholder pic is 250x260 pixels

  imageMode(CENTER);
}


void draw() {
  ps.pauseGame();
  if (gamePaused == false) {
    background(0);

    p.playerRotation();
    h.hunterRotation();

    for (int j = 0; j < d.length; j++) {
      d[j].updateDust();

      if (d[j].dustPos.x < 0 - d[j].dustSize) {
        d[j].dustPos.x = width + d[j].dustSize;
      }
      if (d[j].dustPos.y > height + d[j].dustSize) {
        d[j].dustPos.y = 0 - d[j].dustSize;
      }
    }
  }
}
