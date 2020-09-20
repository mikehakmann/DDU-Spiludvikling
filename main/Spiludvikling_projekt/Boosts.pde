class Boosts {
  boolean tazerPickedUp = false;
  boolean used = false;
  boolean tazerUsed = false;
  int tazerSpawn = floor(random(3));

  //spawner en boost (energidrik og tazer)
  void boost(float x, float y) {

    //spawner en energidrik i dens spawn position, hvis den ikke er blevet samlet op endnu
    if (used == false) {
      spawnBoost(x, y);
    }

    //spawner en tazer i dens spawn position, hvis den ikke er blevet samlet op endnu
    if (tazerPickedUp == false) {
      if (tazerSpawn == 0) {
        spawnTazer(width*0.08398, height*0.1319);
      }
      if (tazerSpawn == 1) {
        spawnTazer(width*0.9180, height*0.1736);
      }
      if (tazerSpawn == 2) {
        spawnTazer(width*0.4688, height*0.5208);
      }
    }

    //spawner tazeren ud for "Items" i toppen af skærmen, når tazeren er blevet samlet op
    if (tazerPickedUp == true) {
      spawnTazer(width*0.37, height*0.026);
    }

    //tegner et rødt kryds over tazeren ud for "Items", efter man har brugt den
    if (tazerUsed == true) {

      stroke(255, 0, 0);
      strokeWeight(2);
      line(width*0.3661, height*0.01419, width*0.3739, height*0.03781);
      line(width*0.3661, height*0.03781, width*0.3739, height*0.01419);
      noStroke();
    }
  }  

  //tegner energidrikken som øger spillerens fart, hvis spilleren tager den
  void spawnBoost(float x, float y) {
    image(boost, x, y);
    if (playerCX > x-width*0.01211 && playerCX < x+width*0.01211) {
      if (playerCY> y-height*0.02014 && playerCY < y+height*0.02014) {
        pBaseSpeed += 2;
        pSpeed += 2;
        used = true;  //sørger for at energidrikken forsvinder, efter spilleren har taget den.
      }
    }
  }


  //tegner en tazer som kan brugses til at stunne Jægeren. Den forsvinder hvis spilleren kommer inden for rækkevigde af den.
  void spawnTazer(float x, float y) {
    image(tazer, x, y);
    if (playerCX > x-width*0.009766 && playerCX < x+width*0.009766) {
      if (playerCY > y-height*0.0208 && playerCY < y+height*0.0208) {
        tazerPickedUp = true;  //holder styr på, om spilleren har tazeren eller ej
      }
    }
  }
}
