class Hunter {
  float hunterX = random(200, 2000);
  float hunterY = 500;
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  float hunterAngle;
  float hunerSpeed;
  
  
  void hunterRotation() {
    h.hunterFacePlayer = new PVector((p.playerX+64)-h.hunterX, (p.playerY+64)-h.hunterY);
    h.hunterAngle = PVector.angleBetween(vertical, h.hunterFacePlayer);
    if (h.hunterX > p.playerX+64) {
      h.hunterAngle *= -1;
    }
    
    pushMatrix();
    translate(h.hunterX, h.hunterY);
    rotate(-h.hunterAngle);
    image(hunter, 0, 0);
    popMatrix();
  }
}
