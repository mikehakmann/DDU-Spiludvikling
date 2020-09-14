class Dust {
  PVector dustPos = new PVector(-1, 1);
  PVector dustVel = new PVector(width*0.0001953, height*0.0003472);
  float alphaValue;
  float dustSizeX;
  float dustSizeY;

  Dust(float x, float y, float Xvel, float Yvel, float alphaValue, int dustSizeX, int dustSizeY) {
    dustPos.set(x, y);
    dustVel.set(-Xvel, Yvel);
    this.alphaValue = alphaValue;
    this.dustSizeX = dustSizeX;
    this.dustSizeY = dustSizeY;
  }


  void updateDust() {
    dustPos.add(dustVel);
    fill(100, alphaValue);
    noStroke();
    ellipse(dustPos.x, dustPos.y, dustSizeX, dustSizeY);
  }
}
