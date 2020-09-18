class Collectables {
  boolean keyPickedUp = false;
  int keyCounter = 0;
  
  
  void placeKey() {
    if (keyPickedUp == false) {
      spawnKey(450, 400);
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
    if (playerCX > x-25 && playerCX < x+25) {
      if (playerCY > y-30 && playerCY < y+30) {
        keyPickedUp = true;  //holder styr på, om spilleren har nøglen eller ej
        keyCounter++;
      }
    }
  }
}
