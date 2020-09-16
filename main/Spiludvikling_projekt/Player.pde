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
    scale(width*0.0003125);
    rotate(-playerAngle);
    image(player, 0, 0);
    popMatrix();
    //p.flashlight();
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
    pushMatrix();    
    fill(0);
    translate (playerX+27, playerY+16);
    rotate(-playerAngle);
    noStroke();
    beginShape();
    vertex(width*0.01055, height*0.01111);
    vertex(width*0.01055, -height*0.01111);
    vertex(width*0.07813, -height*0.3125);//Højre lommelygte del bredde og længde
    vertex(width*1.2, -height*2);  
    vertex(width*1.2, height*2);
    vertex(-width*1.2, height*2);
    vertex(-width*1.2, height*0.01111);
    vertex(-width*1.2, -height*2);
    vertex(-width*0.07813, -height*0.3125);//lommelygte bredde og længde
    vertex(-width*0.01055, -height*0.01111);
    vertex(-width*0.01055, height*0.01111);
    endShape(CLOSE);
    quad(-width*1.2, -height*2, -width*0.07773-2, -height*0.3125, width*0.07773+2, -height*0.3125, width*1.2, -height*2);
    popMatrix();
  }
}
