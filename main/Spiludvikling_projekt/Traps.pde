class Traps {
  boolean pianoStanding = true;



  //void shelf (int shelfX, int shelfY) {
  //  rect (100, 100, 75, 75);

  //  rect (shelfX, shelfY, 75, 75);
  //}




  void piano(float x, float y) {  

    if (pianoStanding == true) {
      drawPiano(200, 300);
    }
    if (pianoStanding == false) {
      drawPianoFald(200, 300);
    }
  }

  void drawPiano(float x, float y) {
    pushMatrix();
    //translate(x, y);

    rotate(PI/3);

    image(piano, x, y);
    popMatrix();
    if (keyPressed) {

      if (key == 'e'||key=='E') {


        if (playerX+55  > x-55 && playerX < x+55 &&
          playerY+55 > y-55 && playerY  < y+55) {
          pianoStanding = false;
          println("u got this, ur way ahead");
        }
      }

      
    }
  }

  void drawPianoFald(float x, float y) {

    //if(key == 'e'||key =='E'){

    image(pianoFaldt, x, y);
  }






  //void pianofald(float x, float y) {
  //  if (pianoStanding == true) {
  //  }
  //  if (playerX+55   > x-75 && playerX+55 < x &&
  //    playerY+31 > y-75 && playerY+31 < y) {
  //    drawPianoFald(200, 300);
  //  }
  //}
}
