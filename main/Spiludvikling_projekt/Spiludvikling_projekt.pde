Hunter h;
Map m;
Player p;
Stun s;
Traps t;


void setup() {
  h = new Hunter();
  m = new Map();
  p = new Player();
  s = new Stun();
  t = new Traps();

  //background
  background(255);
  fullScreen();
m.drawMap();
}


void draw() {
}
