class Player {
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;
  float playerSpeed;
  
  
  void playerRotation() {
    p.playerFaceCursor = new PVector((playerX+64)-mouseX, (playerY+64)-mouseY);
    p.playerAngle = PVector.angleBetween(vertical, playerFaceCursor);
    if (mouseX > playerX+64) {
      playerAngle *= -1;
    }
    
    pushMatrix();
    translate(playerX+64, playerY+64);
    rotate(-playerAngle);
    image(player, 0, 0);
    popMatrix();
  }
}
