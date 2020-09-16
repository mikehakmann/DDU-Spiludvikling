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
      spawnBoost(200,3900);
    }
   
  }
  void spawnBoost(float x,float y) {
    fill(255, 255, 0);
    image(boost,x,y);
   //rect(500, 500, 200, 200);
    if (playerX >= x-37.5 && playerX <= x+37.5) {
      if (playerY >= y-37.5 && playerY <= y+37.5) {
        pSpeed += 10;
        used = true;
      }
    }
    
  }
}
