class Screens {

  void checkVictory() {
    if (c.keyCounter == 1) {
      if (playerCX > 1125 && playerCX < 1275) {
        if (playerCY > 75 && playerCY < 100) {
          victory();
        }
      }
    }
  }


  void victory() {
    gamePaused = true;
    fill(0, 80);
    rect(0, 0, width, height);  //rect() used to fade game in and out, when it's paused
    textSize(180);
    textAlign(CENTER, BOTTOM);
    fill(255);
    text("You've Escaped!", width/2, height/2);
  }
}
