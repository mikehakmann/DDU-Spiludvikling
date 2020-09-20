class Collectables {
  boolean keyPickedUp = false;
  int keyCounter = 0;


  void placeKey(float x, float y) {
    if (keyPickedUp == false) {
      spawnKey(x, y);
    }
    if (keyPickedUp == true) {
      spawnKey(width*0.40, height*0.026);
    }
  }


  void spawnKey(float x, float y) {
    pushMatrix();
    //scale(0.7);
    image(doorKey, x, y);
    popMatrix();
    if (playerCX > x-width*0.01211 && playerCX < x+width*0.01211) {
      if (playerCY > y-height*0.02014 && playerCY < y+height*0.02014) {
        keyPickedUp = true;  //holder styr på, om spilleren har nøglen eller ej
        keyCounter++;
      }
    }
  }
}
