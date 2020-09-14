class Hunter {
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  float hunterAngle;
  float hunerSpeed;
  
  
  void hunterRotation() {
    hunterFacePlayer = new PVector((playerX+64)-hunterX, (playerY+64)-hunterY);
    hunterAngle = PVector.angleBetween(vertical, hunterFacePlayer);
    if (hunterX > playerX+64) {
      hunterAngle *= -1;
    }
    
    pushMatrix();
    translate(hunterX, hunterY);
    rotate(-hunterAngle);
    image(hunter, 0, 0);
    popMatrix();
  }
}
