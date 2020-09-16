class Boosts {

  boolean used = false;
  void speedBoost(float x, float y) {  //places yellow square at randomized x- and y-coordinates, then checks if player is inside the square. If yes, increases player's speed and sets roll to 0 to ensure playerSpeed is only increased once (function runs as long as roll is correct, i.e. roll==1)
    //noLoop();
    pushMatrix();
    translate(x, y);

    //scale(4);
    //image(SBoost, 0, 0);
    popMatrix();
    if (used == false) {
      spawnBoost(200, 300);
    }
  }
  void spawnBoost(float x, float y) {
    image(boost, x, y);
    if (playerX+26 > x-75 && playerX+26 < x &&
        playerY+15 > y-75 && playerY+15 < y) {
      pSpeed += 10;
      used = true;
    }
  }
}
