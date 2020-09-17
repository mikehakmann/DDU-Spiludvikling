class Pause {
  void pauseGame() {
    if (key == 'p' || key == 'P') {
      gamePaused = true;
      textAlign(CENTER);
      fill(255, 255);
      textSize(height*0.0416);
      text("PAUSED", width/2, height*0.45);
    }
    if (key == 'o' || key == 'O') {
      gamePaused = false;
    }
  }
}
