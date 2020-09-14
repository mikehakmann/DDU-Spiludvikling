class Dust {
  PVector dustPos = new PVector(-10, 10);
  PVector dustVel = new PVector(0.5, 0.5);
  float alphaValue;
  float dustSize;

  Dust(float x, float y, float vel, float alphaValue, int dustSize) {
    dustPos.set(x, y);
    dustVel.set(-vel, vel);
    this.alphaValue = alphaValue;
    this.dustSize = dustSize;
  }


  void updateDust() {
    dustPos.add(dustVel);
    fill(100, alphaValue);
    noStroke();
    circle(dustPos.x, dustPos.y, dustSize);
    
    
  }
}
