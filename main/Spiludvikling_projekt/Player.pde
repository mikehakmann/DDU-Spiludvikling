class Player {
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;


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

  void movePlayer() {
    playerX = constrain(playerX + pSpeed*(int(isRight) - int(isLeft)), 15, width  - 128);  //"15" og "128" er bare fordi det passer til placeholder-billedet for player.
    playerY = constrain(playerY + pSpeed*(int(isDown)  - int(isUp)), 15, height - 128);    //værdierne skal ændres, når vi har en rigtig player-model (derfor ændres de heller ikke til at være width/height-baserede.
  }                                                                                        //de er essentielt bare collision for siderne af skærmen.



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
}
