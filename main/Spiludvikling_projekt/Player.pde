class Player {
  PVector playerAim = new PVector(mouseX, mouseY);
  PVector playerFaceCursor;
  float playerAngle;

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
    
    for(int i = 0; i < m.blocks.length;i++)
    {
      if((playerCX > m.blocks[i].x && playerCX < (m.blocks[i].x+m.blocks[i].w)) && (playerCY > m.blocks[i].y  && playerCY < (m.blocks[i].y+m.blocks[i].h)))
      {
        println("My ladies - We hit a wall");
      }
    }
  }



  boolean playerSetMove(int k, boolean b) {
    switch (k) {                            //NOTE OM "COLLISION"
    case +'W':                              //
    case UP:                                //Hvis man prøver at bevæge sig (trykker w, a, s eller d)
      return isUp = b;                      //Så tjek om der er plads til at rykke sig "pSpeed" længere i dén retning
                                            //Hvis ja, så:
    case +'S':                              //playerX + pSpeed    (eller hvilken retning man nu skal)
    case DOWN:                              //
      return isDown = b;                    //HVIS IKKE:
                                            //så pdater IKKE spillers position.
    case +'A':                              //
    case LEFT:                              //på den måde bevæger man sig kun
      return isLeft = b;                    //hvis der er plads til det.
                                            //pSpeed er hvor meget man rykker sig hvert frame
    case +'D':                              //
    case RIGHT:                             //så hvis man ikke kan rykke sig pSpeed længere i en retning
      return isRight = b;                   //så må der være mindre end pSpeed plads
                                            //og derfor, ville man (hvis rykkede sig alligevel) ende inde i en væg.
    case 'Q':
      h.hunterStunned();
    
    default:
      return b;
    }
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
