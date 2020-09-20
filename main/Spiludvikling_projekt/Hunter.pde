class Hunter {
  //PVector hunterAim = new PVector(mouseX, mouseY);
  PVector hunterFacePlayer;
  PVector targeting;
  float hunterAngle;
  float deltaXpos, deltaYpos, deltaXneg, deltaYneg;
  int counter = 0;
  int hunterAbove, hunterOnLeft, hunterBelow, hunterOnRight;
  int INThunterX, INThunterY = 0;


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

    INThunterX = int(hunterX);
    INThunterY = int(hunterY);
  }


  void hunterSetMove() {
    deltaXpos = playerCX - hunterX;
    deltaYpos = playerCY - hunterY;
    deltaXneg = hunterX - playerCX;
    deltaYneg = hunterY - playerCY;

    hunterAbove = get(INThunterX, INThunterY - int(hSpeed));
    hunterOnLeft = get(INThunterX - int(hSpeed), INThunterY);
    hunterBelow = get(INThunterX, INThunterY + int(hSpeed));
    hunterOnRight = get(INThunterX + int(hSpeed), INThunterY);

    if (frameCount > 200) {
      if (isStunned == false) {
        if (deltaXpos > deltaXneg) {
          goLeft = false;
          goRight = true;
          if (hunterOnRight == black) {  //Disse tre linjer - alle fire steder
            goRight = false;             //giver tilsammen Jægeren "collision"
          }                              //
        }
        
        if (deltaXneg > deltaXpos) {
          goRight = false;
          goLeft = true;
          if (hunterOnLeft == black) {  //Disse tre linjer - alle fire steder
            goLeft = false;             //giver tilsammen Jægeren "collision"
          }                             //
        }

        if (deltaYpos > deltaYneg) {
          goUp = false;
          goDown = true;
          if (hunterBelow == black) {  //Disse tre linjer - alle fire steder
            goDown = false;            //giver tilsammen Jægeren "collision"
          }                            //
        }
        
        if (deltaYneg > deltaYpos) {
          goDown = false;
          goUp = true;
          if (hunterAbove == black) {  //Disse tre linjer - alle fire steder
            goUp = false;              //giver tilsammen Jægeren "collision"
          }                            //
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
