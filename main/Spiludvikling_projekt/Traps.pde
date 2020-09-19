class Traps {
  boolean useIsPressed = false;

  //Det her er Piano1
  void piano1(float x, float y) {  
    if (pianoStanding1 == true) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(piano, 0, 0);
      popMatrix();

      if (useIsPressed == true) {
        if (playerCX > x-70 && playerCX < x+25) {
          if (playerCY > y-70 && playerCY < y+70) {
            pianoStanding1 = false;
          }
        }
      }
    }

    if (pianoStanding1 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(pianoFaldt, 18, 0);
      popMatrix();
    }
  }

  /********************************************************************************************************/

  //Det her er Piano2
  void piano2(float x, float y) {
    if (pianoStanding2 == true) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(piano, 0, 0);
      popMatrix();

      if (useIsPressed == true) {
        if (playerCX > x-70 && playerCX < x+25) {
          if (playerCY > y-70 && playerCY < y+70) {
            pianoStanding2 = false;
          }
        }
      }
    }

    if (pianoStanding2 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(pianoFaldt, 18, 0);
      popMatrix();
    }
  }

  /********************************************************************************************************/

  //Det her er Bucket1
  void bucket1(float x, float y) {
    if (bucketStanding1 == true) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(bucket, 0, 0);
      popMatrix();

      if (useIsPressed == true) {
        if (playerCX > x-40 && playerCX < x+25) {
          if (playerCY > y-70 && playerCY < y+70) {
            bucketStanding1 = false;
          }
        }
      }
    }

    if (bucketStanding1 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(bucketFaldt, 0, 0);
      popMatrix();

      if (playerCX > x-40 && playerCX < x+25) {
        if (playerCY > y-70 && playerCY < y+70) {
          pSpeed = pBaseSpeed/1.6;
        }
      } else {
        pSpeed = pBaseSpeed;
      }
      if (hunterX > x-40 && hunterX < x+25) {
        if (hunterY > y-70 && hunterY < y+70) {
          hSpeed = hBaseSpeed/3;
        }
      } else {
        hSpeed = hBaseSpeed;
      }
    }
  }

  /********************************************************************************************************/

  //Det her et Bucket2
  void bucket2(float x, float y) {
    if (bucketStanding2 == true) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(bucket, 0, 0);
      popMatrix();

      if (useIsPressed == true) {
        if (playerCX > x-40 && playerCX < x+25) {
          if (playerCY > y-70 && playerCY < y+70) {
            bucketStanding2 = false;
          }
        }
      }
    }

    if (bucketStanding2 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(bucketFaldt, 0, 0);
      popMatrix();
      
      if (playerCX > x-40 && playerCX < x+25) {
        if (playerCY > y-70 && playerCY < y+70) {
          pSpeed = pBaseSpeed/1.6;
        }
      } else {
        pSpeed = pBaseSpeed;
      }
      if (hunterX > x-40 && hunterX < x+25) {
        if (hunterY > y-70 && hunterY < y+70) {
          hSpeed = hBaseSpeed/3;
        }
      } else {
        hSpeed = hBaseSpeed;
      }
    }
  }
}
