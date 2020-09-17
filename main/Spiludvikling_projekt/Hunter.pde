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
    hunterX = constrain(hunterX + hSpeed*(int(goRight) - int(goLeft)), 64, width  - 128);
    hunterY = constrain(hunterY + hSpeed*(int(goDown)  - int(goUp)), 75, height - 81);
  }
  

  void hunterSetMove() {
    deltaX = abs(playerX+27 - hunterX);
    deltaY = abs(playerY+16 - hunterY);

    if (frameCount > 200) {
      if (deltaX > deltaY && deltaX > 30) {
        goLeft = false;
        goRight = true;
        if (hunterX > playerX+27 && hunterX > 30) {
          goRight = false;
          goLeft = true;
        }
      }
      if (deltaY > deltaX && deltaY > 30) {
        goUp = false;
        goDown = true;
        if (hunterY > playerY+16 && hunterY > 30) {
          goDown = false;
          goUp = true;
        }
      }
      //if (deltaX == deltaY) {
      //  hunterX += hSpeed;
      //  hunterY += hSpeed;
      //  if (hunterX == playerY+27) {
      //    hunterX -= hSpeed*2;
      //  }
      //  if (hunterY == playerY+16) {
      //    hunterY -= hSpeed*2;
      //  }
      //}
    }
  }
}
