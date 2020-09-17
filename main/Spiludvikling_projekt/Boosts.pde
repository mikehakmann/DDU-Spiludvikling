class Boosts {
  boolean tazerPickedUp = false;
  boolean used = false;
  boolean tazerUsed = false;

  //spawner en boost (energidrik og tazer)
  void boost(float x, float y) {

    //spawner en energidrik i dens spawn position, hvis den ikke er blevet samlet op endnu
    if (used == false) {
      spawnBoost(200, 300);  //placeholder koordinater - spawner den lige ved spillerens placeholder-position
    }

    //spawner en tazer i dens spawn position, hvis den ikke er blevet samlet op endnu
    if (tazerPickedUp == false) {
      spawnTazer(400, 300);  //placeholder koordinater - spawner den lige ved spillerens placeholder-position
    }

    //spawner tazeren ud for "Items" i toppen af skærmen, når tazeren er blevet samlet op
    if (tazerPickedUp == true) {
      spawnTazer(width*0.37, height*0.026);
    }

    //tegner et rødt kryds over tazeren ud for "Items", efter man har brugt den
    if (tazerUsed == true) {
      stroke(255, 0, 0);
      strokeWeight(2);
      line(width*0.37 - 10, height*0.026 - 17, width*0.37 + 10, height*0.026 + 17);
      line(width*0.37 - 10, height*0.026 + 17, width*0.37 + 10, height*0.026 - 17);
    }
  }  

  //tegner energidrikken som øger spillerens fart, hvis spilleren tager den
  void spawnBoost(float x, float y) {
    image(boost, x, y);
    if (playerX+27 > x-31 && playerX+27 < x+31) {
      if (playerY+16> y-29 && playerY+16 < y+29) {
        pSpeed += 2;
        used = true;  //sørger for at energidrikken forsvinder, efter spilleren har taget den.
      }
    }
  }


  //tegner en tazer som kan brugses til at stunne Jægeren. Den forsvinder hvis spilleren kommer inden for rækkevigde af den.
  void spawnTazer(float x, float y) {
    image(tazer, x, y);
    if (playerX+27 > x-25 && playerX+27 < x+25) {
      if (playerY+16 > y-30 && playerY+16 < y+30) {
        tazerPickedUp = true;  //holder styr på, om spilleren har tazeren eller ej
      }
    }
  }
}
