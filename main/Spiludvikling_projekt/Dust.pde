class Dust {
  PVector dustPos = new PVector(-10, 10);
  PVector dustVel = new PVector(0.5, 0.5);
  
  float dustSize;

  Dust(float x, float y, float vel, int dustSize) {
    dustPos.set(x, y);
    dustVel.set(-vel, vel);
    this.dustSize = dustSize;
  }


  void updateDust() {
    dustPos.add(dustVel);
    fill(0);
    noStroke();
    circle(dustPos.x, dustPos.y, dustSize);
    
    
  }
}
