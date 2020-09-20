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
        if (playerCX > x-width*0.02734 && playerCX < x+width*0.009766) {
          if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
            pianoStanding1 = false;
          }
        }
      }
    }

    if (pianoStanding1 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(pianoFaldt, width*0.007031, 0);
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
        if (playerCX > x-width*0.01563 && playerCX < x+width*0.009766) {
          if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
            pianoStanding2 = false;
          }
        }
      }
    }

    if (pianoStanding2 == false) {
      pushMatrix();
      translate(x, y);
      rotate(PI);
      image(pianoFaldt, width*0.007031, 0);
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
        if (playerCX > x-width*0.01563 && playerCX < x+width*0.009766) {
          if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
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

      if (playerCX > x-width*0.01563 && playerCX < x+width*0.009766) {
        if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
          pSpeed = pBaseSpeed/1.6;
        }
      } else {
        pSpeed = pBaseSpeed;
      }
      if (hunterX > x-width*0.01563 && hunterX < x+width*0.009766) {
        if (hunterY > y-height*0.04861 && hunterY < y+height*0.04861) {
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
        if (playerCX > x-width*0.01563 && playerCX < x+width*0.009766) {
          if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
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
      
      if (playerCX > x-width*0.01563 && playerCX < x+width*0.009766) {
        if (playerCY > y-height*0.04861 && playerCY < y+height*0.04861) {
          pSpeed = pBaseSpeed/1.6;
        }
      } else {
        pSpeed = pBaseSpeed;
      }
      if (hunterX > x-width*0.01563 && hunterX < x+width*0.009766) {
        if (hunterY > y-height*0.04861 && hunterY < y+height*0.04861) {
          hSpeed = hBaseSpeed/3;
        }
      } else {
        hSpeed = hBaseSpeed;
      }
    }
  }
}
