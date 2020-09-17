class Boosts {
  boolean tazerPickedUp = false;
  boolean used = false;
  boolean used2 = false;
  void speedBoost(float x, float y) {  
    pushMatrix();
    translate(x, y);

    popMatrix();
    if (used == false) {
      spawnBoost(200, 300);
    }
    if (used2== false) {
      spawnTazer(400, 300);
    }

    if (tazerPickedUp == true) {

      spawnTazer(20, 20);
    }
  }  
  void spawnBoost(float x, float y) {
    image(boost, x, y);
    if (playerX+26   > x-10 && playerX+26 < x &&
      playerY+15 > y-28 && playerY+15 < y) {
      pSpeed += 3;
      used = true;
    }
  }

  //spawner en Tazer som kan brugses til at stunne jægeren
  void spawnTazer(float x, float y) {
    image(tazer, x, y);
    if (playerX+26   > x-20 && playerX+26 < x &&
      playerY+15 > y-27 && playerY+15 < y) {
      //pSpeed += 100;
      tazerPickedUp = true;
      used2 = true;
    }
  }

  //void keyReleased() {
  //  if (key == 'q' ||key == 'Q') {
  //    if (tazerPickedUp == true) {
  //      if(jægerX,jægerY == < playerX+200,playerY+200){
        
  //      //jægerX,jægerY = 0;
  //      // i 20 sek
  //      }
        
  //    tazerPickedUp = false;
  //    }
  //  }
  //}
}
