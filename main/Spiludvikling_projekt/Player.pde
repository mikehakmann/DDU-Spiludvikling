class Player {
  float playerX = 1200;
  float playerY = 1000;
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;
  float playerSpeed;
  
  
  void playerRotation() {
    p.playerFaceCursor = new PVector((p.playerX+64)-mouseX, (p.playerY+64)-mouseY);
    p.playerAngle = PVector.angleBetween(vertical, p.playerFaceCursor);
    if (mouseX > p.playerX+64) {
      p.playerAngle *= -1;
    }
    
    pushMatrix();
    translate(p.playerX+64, p.playerY+64);
    rotate(-p.playerAngle);
    image(player, 0, 0);
    popMatrix();
  }
}
