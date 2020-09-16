class Hunter {
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  float hunterAngle;
  float deltaX;
  float deltaY;


  void hunterRotation() {
    hunterFacePlayer = new PVector((playerX+27)-hunterX, (playerY+16)-hunterY);
    hunterAngle = PVector.angleBetween(vertical, hunterFacePlayer);
    if (hunterX > playerX+27) {
      hunterAngle *= -1;
    }

    pushMatrix();
    translate(hunterX, hunterY);
    scale(width*0.0005469);
    rotate(-hunterAngle - PI/1.41);
    image(hunter, 0, 0);
    popMatrix();
  }

  void moveHunter() {
    deltaX = abs(playerX+27 - hunterX);
    deltaY = abs(playerY+16 - hunterY);

    if (frameCount > 200) {
      if (deltaX > deltaY) {
        hunterX += hSpeed;
      }
      if (deltaY > deltaX) {
        hunterY += hSpeed;
      }
      if (deltaX == deltaY) {
        int shadowdocs = floor(random(2));  //tilfældigheds-generator kræver naturligvis et tilfædigt navn
        if (shadowdocs == 1) {
          hunterX += hSpeed;
        }
        if (shadowdocs == 2) {
          hunterY += hSpeed;
        }
      }
    }
  }
}
