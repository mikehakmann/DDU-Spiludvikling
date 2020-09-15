class Player {
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;


  void playerRotation() {
    p.playerFaceCursor = new PVector((playerX+27)-mouseX, (playerY+16)-mouseY);
    p.playerAngle = PVector.angleBetween(vertical, playerFaceCursor);
    if (mouseX > playerX+27) {
      playerAngle *= -1;
    }

    pushMatrix();
    translate(playerX+27, playerY+16);
    rotate(-playerAngle);
    image(player, 0, 0);
    popMatrix();
  }

  void movePlayer() {
    playerX = constrain(playerX + pSpeed*(int(isRight) - int(isLeft)), 64, width  - 128);
    playerY = constrain(playerY + pSpeed*(int(isDown)  - int(isUp)), 75, height - 81);
  }



  boolean playerSetMove(int k, boolean b) {
    switch (k) {
    case +'W':
    case UP:
      return isUp = b;

    case +'S':
    case DOWN:
      return isDown = b;

    case +'A':
    case LEFT:
      return isLeft = b;

    case +'D':
    case RIGHT:
      return isRight = b;

    default:
      return b;
    }
  }
  
  void flashlight() {
    
  }
}
