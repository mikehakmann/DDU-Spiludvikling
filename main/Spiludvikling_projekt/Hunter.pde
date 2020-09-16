class Hunter {
  PVector hunterFacePlayer;
  PVector targeting;
  float hunterAngle;
  

  void hunterRotation() {
    targeting = new PVector(deltaX, deltaY);
    hunterFacePlayer = new PVector((playerX+27)-hunterX, (playerY+16)-hunterY);
    hunterAngle = PVector.angleBetween(vertical, hunterFacePlayer);
    if (hunterX > playerX+27) {
      hunterAngle *= -1;
    }

    pushMatrix();
    translate(targeting.x, targeting.y);
    scale(width*0.0005469);
    rotate(-hunterAngle - PI/1.41);
    image(hunter, 0, 0);
    popMatrix();
  }

  void moveHunter() {
    if (frameCount > 200) {
      if (targeting.x > targeting.y) {
        targeting.x += hSpeed;
      }
      if (targeting.y > targeting.x) {
        targeting.y += hSpeed;
      }
      if (targeting.x == targeting.y) {
        int shadowdocs = floor(random(2));  //tilfældigheds-generator kræver naturligvis et tilfædigt navn
        if (shadowdocs == 1) {
          targeting.x += hSpeed;
        }
        if (shadowdocs == 2) {
          targeting.y += hSpeed;
        }
      }
    }
  }
}
