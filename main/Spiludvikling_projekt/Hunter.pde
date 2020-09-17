class Hunter {
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  PVector targeting;
  float hunterAngle;
  float deltaX;
  float deltaY;


  void hunterRotation() {
    targeting = new PVector(deltaX, deltaY);
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
    hunterX = constrain(hunterX + hSpeed*(int(goRight) - int(goLeft)), width*0.025, width*0.95);
    hunterY = constrain(hunterY + hSpeed*(int(goDown)  - int(goUp)), height*0.05208, height*0.9438);
  }


  void hunterSetMove() {
    deltaX = abs(playerX+27 - hunterX);
    deltaY = abs(playerY+16 - hunterY);

    if (frameCount > 200) {
      if (isTazed == false) {
        if (deltaX > deltaY && deltaX > width*0.01172) {
          goLeft = false;
          goRight = true;
          if (hunterX > playerX+27 && hunterX > width*0.01172) {
            goRight = false;
            goLeft = true;
          }
        }
        if (deltaY > deltaX && deltaY > height*0.0208) {
          goUp = false;
          goDown = true;
          if (hunterY > playerY+16 && hunterY > height*0.0208) {
            goDown = false;
            goUp = true;
          }
        }
      }

      if (isTazed == true) {
        goLeft = false;
        goRight = false;
        goUp = false;
        goDown = false;
      }
    }
  }


  void hunterStunned() {
    if (deltaX <= width*0.02734 && deltaY <= height*0.04861) {
      isTazed = true;
    }
  }
}
