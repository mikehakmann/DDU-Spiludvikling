class Hunter {
  PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  PVector targeting;
  float hunterAngle;
  float deltaX;
  float deltaY;
  int counter = 0;


  void hunterRotation() {
    targeting = new PVector(deltaX, deltaY);
    hunterFacePlayer = new PVector((playerCX)-hunterX, (playerCY)-hunterY);
    hunterAngle = PVector.angleBetween(vertical, hunterFacePlayer);
    if (hunterX > playerCX) {
      hunterAngle *= -1;
    }

    pushMatrix();
    translate(hunterX, hunterY);
    scale(width*0.0005469);
    rotate(-hunterAngle - PI/1.41);
    //if (isStunned == true) {
    //  tint(200, 150);
    //}                          //forsøgte at gøre Jægeren lidt mørkere, når han er stunned
    //else {                     //men tint() ser ikke ud til at kunne gøre billeder mørkere
    //  tint(255, 255);
    //}
    image(hunter, 0, 0);
    popMatrix();
  }


  void moveHunter() {
    hunterX = constrain(hunterX + hSpeed*(int(goRight) - int(goLeft)), width*0.025, width*0.95);
    hunterY = constrain(hunterY + hSpeed*(int(goDown)  - int(goUp)), height*0.05208, height*0.9438);
  }


  void hunterSetMove() {
    deltaX = abs(playerCX - hunterX);
    deltaY = abs(playerCY - hunterY);

    if (frameCount > 200) {
      if (isStunned == false) {
        if (deltaX > deltaY && deltaX > width*0.01172) {
          goLeft = false;
          goRight = true;
          if (hunterX > playerCX && hunterX > width*0.01172) {
            goRight = false;
            goLeft = true;
          }
        }
        if (deltaY > deltaX && deltaY > height*0.0208) {
          goUp = false;
          goDown = true;
          if (hunterY > playerCY && hunterY > height*0.0208) {
            goDown = false;
            goUp = true;
          }
        }
      }

      if (isStunned == true && counter == 0) {
        goLeft = false;
        goRight = false;
        goUp = false;
        goDown = false;
        b.tazerUsed = true;
        startTimer = millis();
        counter += 1;
      }
      if (millis() - startTimer >= 5000) {
        isStunned = false;
      }
    }
  }


  void hunterStunned() {
    if (b.tazerPickedUp == true) {
      if (deltaX <= width*0.02734 && deltaY <= height*0.04861) {
        isStunned = true;
      }
    }
  }
}
