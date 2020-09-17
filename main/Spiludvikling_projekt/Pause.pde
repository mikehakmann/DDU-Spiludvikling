class Pause {
  void pauseGame() {
    if (key == 'p' || key == 'P') {
      gamePaused = true;
      fill(0, 70);
      rect(0, 0, width, height);  //rect() used to fade game in and out, when it's paused
      textSize(180);
      textAlign(CENTER, BOTTOM);
      fill(255);
      text("Paused", width/2, height/2);
    }
    if (key == 'o' || key == 'O') {
      gamePaused = false;
    }
  }
}
