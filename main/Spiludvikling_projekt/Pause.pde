class Pause {
  void pauseGame() {
    if (keyPressed) {
      if (key == 'p' || key == 'P') {
        gamePaused = true;
      }
      if (key == 'o' || key == 'O') {
        gamePaused = false;
      }
    }
  }
}
