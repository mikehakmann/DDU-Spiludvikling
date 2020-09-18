class Traps {
  boolean pianoStanding = true;
   boolean bucketStanding = true;



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
    translate(x, y);

    rotate(PI/2);

    image(piano, 0, 0);
    popMatrix();
   
    if (keyPressed) {

      if (key == 'e'||key=='E') {


        if (playerX+55  > x-55 && playerX < x+55 &&
          playerY+55 > y-55 && playerY  < y+55) {
          pianoStanding = false;
        }
      }

      
    }
  }

  void drawPianoFald(float x, float y) {

    //if(key == 'e'||key =='E'){

   pushMatrix();
    translate(x, y);

    rotate(PI/2);

    image(pianoFaldt, 0, 0);
    popMatrix();
  }
  
  
  
  void bucket(float x, float y) {  

    if (pianoStanding == true) {
      drawBucket(440, 300);
    }
    if (pianoStanding == false) {
      drawBucketFald(440, 300);
    }
  }

  void drawBucket(float x, float y) {
    pushMatrix();
    translate(x, y);

    rotate(PI/2);

    image(bucket, 0, 0);
    popMatrix();
   
    if (keyPressed) {

      if (key == 'e'||key=='E') {


        if (playerX+55  > x-55 && playerX < x+55 &&
          playerY+55 > y-55 && playerY  < y+55) {
          bucketStanding = false;  
        }
      }

      
    }
  }

  void drawBucketFald(float x, float y) {


   pushMatrix();
    translate(x, y);

    rotate(PI/2);

    image(bucketFaldt, 0, 0);
    popMatrix();
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
