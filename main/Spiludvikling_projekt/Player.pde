class Player {
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;
  boolean up, left, down, right;

  void playerRotation() {
    p.playerFaceCursor = new PVector((playerCX)-mouseX, (playerCY)-mouseY);
    p.playerAngle = PVector.angleBetween(vertical, playerFaceCursor);
    if (mouseX > playerCX) {
      playerAngle *= -1;
    }

    pushMatrix();
    translate(playerCX, playerCY);
    scale(width*0.0003125);
    rotate(-playerAngle);
    //tint(255, 255);
    image(player, 0, 0);
    popMatrix();
    //p.flashlight();
  }

  void movePlayer() {
    playerCX = constrain(playerCX + pSpeed*(int(isRight) - int(isLeft)), 64, width  - 128);
    playerCY = constrain(playerCY + pSpeed*(int(isDown)  - int(isUp)), 75, height - 81);

    //for (int i = 0; i < m.blocks.length; i++) {
    //  if (playerCX > m.blocks[i].x && playerCX < (m.blocks[i].x+m.blocks[i].w)) {
    //    if (playerCY > m.blocks[i].y  && playerCY < (m.blocks[i].y+m.blocks[i].h)) {
    //      println("My ladies - We hit a wall");
    //    }
    //  }
    //}
  }



  boolean playerSetMove(int k, boolean b) {
    //spillerens position er "playerC_" (enten X eller Y) og hvis spilleren bevæger sig, vil positionen i næste frame være "playerC_ + pSpeed"
    if (k == 'w') {
      for (int i = 0; i < m.blocks.length; i++) {
        //if (playerCY - pSpeed >= m.blocks[i].y  && playerCY - pSpeed <= (m.blocks[i].y+m.blocks[i].h)) { //tjekker om spillerens position i næste frame (hvis spilleren bevæger sig) er inden for en blok
        //  //return b;                     //hvis den er, så return b, som ikke ændrer på spillerens position
        //  return up = false;
        //}
        //else {
          return isUp = b;              //hvis den ikke er, så opdateres spillerens position.
          //return up = true;
        //}
      }
    }
    if (k == 'a') {
      for (int i = 0; i < m.blocks.length; i++) {
        //if (playerCX - pSpeed >= m.blocks[i].x  && playerCX - pSpeed <= (m.blocks[i].x+m.blocks[i].w)) { //tjekker om spillerens position i næste frame (hvis spilleren bevæger sig) er inden for en blok
        //  //return b;                     //hvis den er, så return b, som ikke ændrer på spillerens position
        //  return left = false;
        //}
        //else {
          return isLeft = b;            //hvis den ikke er, så opdateres spillerens position.
          //return left = true;
        //}
      }
    }
    if (k == 's') {
      for (int i = 0; i < m.blocks.length; i++) {
        //if (playerCY + pSpeed >= m.blocks[i].y  && playerCY + pSpeed <= (m.blocks[i].y+m.blocks[i].h)) { //tjekker om spillerens position i næste frame (hvis spilleren bevæger sig) er inden for en blok
        //  //return b;                     //hvis den er, så return b, som ikke ændrer på spillerens position
        //  return down = false;
        //}
        //else {
          return isDown = b;            //hvis den ikke er, så opdateres spillerens position.
          //return down = true;
        //}
      }
    }
    if (k == 'd') {
      for (int i = 0; i < m.blocks.length; i++) {
        //if (playerCX + pSpeed >= m.blocks[i].x  && playerCX + pSpeed <= (m.blocks[i].x+m.blocks[i].w)) { //tjekker om spillerens position i næste frame (hvis spilleren bevæger sig) er inden for en blok
        //  //return b;                     //hvis den er, så return b, som ikke ændrer på spillerens position
        //  return right = false;
        //}
        //else {
          return isRight = b;           //hvis den ikke er, så opdateres spillerens position.
          //return right = true;
        //}
      }
    }
    if (k == 'q') {
      h.hunterStunned();
    }
    return b;  //return b, hvis ingen knapper er trykket ned, fordi denne funktion kvæver, at der altid returneres en boolean
  }

  void flashlight() {
    pushMatrix();    
    fill(0);
    translate (playerCX, playerCY);
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
