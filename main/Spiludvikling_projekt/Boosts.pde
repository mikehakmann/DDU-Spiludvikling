class Boosts {
  boolean tazerPickedUp = false;
  boolean used = false;
  void speedBoost(float x, float y) {
    if (used == false) {
      spawnBoost(200, 300);
    }
    
    if (tazerPickedUp == false) {
      spawnTazer(400, 300);
    }

    if (tazerPickedUp == true) {
      spawnTazer(width*0.37, height*0.026);
    }
  }  
  void spawnBoost(float x, float y) {
    image(boost, x, y);
    if (playerX+26 > x-10 && playerX+26 < x) {
      if (playerY+15 > y-28 && playerY+15 < y) {
        pSpeed += 2;
        used = true;
      }
    }
  }

  //spawner en Tazer som kan brugses til at stunne jægeren
  void spawnTazer(float x, float y) {
    image(tazer, x, y);
    if (playerX+26   > x-20 && playerX+26 < x &&
      playerY+15 > y-27 && playerY+15 < y) {
      tazerPickedUp = true;
    }
  }
}
