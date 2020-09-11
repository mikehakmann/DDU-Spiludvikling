class Player {
  float playerX = 1200;
  float playerY = 1000;
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;
  
  
  void playerRotation() {
    playerFaceCursor = new PVector(((p.playerX+64)-mouseX), ((p.playerY+64)-mouseY));
    playerAngle = PVector.angleBetween(vertical, playerFaceCursor);
    if (mouseX > p.playerX+100) {
      playerAngle *= -1;
    }
    
    background(0);
    
    pushMatrix();
    translate(p.playerX+64, p.playerY+64);
    rotate(-playerAngle);
    image(player, 0, 0);
    popMatrix();
  }
}
