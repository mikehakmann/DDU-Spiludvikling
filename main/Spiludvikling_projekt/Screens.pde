class Screens {

  void checkVictory() {
    if (c.keyCounter == 1) {
      if (playerCX > width*0.4394 && playerCX < width*0.4980) {
        if (playerCY > height*0.05208 && playerCY < height*0.06944) {
          victory();
        }
      }
    }
  }


  void victory() {
    gamePaused = true;
    fill(0, 80);
    rect(0, 0, width, height);  //rect() used to fade game in and out, when it's paused
    textSize(height*0.125);
    textAlign(CENTER, BOTTOM);
    fill(255);
    text("You've Escaped!", width/2, height/2);
  }
}
