class Hunter {
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  float hunterAngle;


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
}
