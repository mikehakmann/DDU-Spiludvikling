class Map {
  int str= 50;

  void drawMap() {
    fill(0);
    rect(0, 0, width, str);
    rect(0, 0, str, height);
    rect(0, height-str, width, height);
    rect(width-str, 0, width, height);
    rect(width/5-75, 0, 75, 325);
    rect(0, height/2-37.5, width/5, -100);
    rect(0, height/2+37.5, width/5, str);
    rect(0, height/2+37.5, width/5, 250);
    rect(125, height-125, width/4, -str);
    rect(width/5+75, 125, 50, height -375);
    rect(width/5+200, 125, 50, height/2-200);
    rect(width/5+250, height/2-125, height/2-200, 50);
    rect(width/5+325, 0, 50, height/2-200);
    rect(width/5+325, height/2-200, 500, -50);
    rect(width/5+200, height/2, 200, 35);
    rect(width/5+500, height/2, 200, 35);
    rect(width/5+200, height/2, 35, 200);
    rect(width/5+700, height/2, 35, 200);
    rect(width/5+200,height/2+200,535,35);  
      
  }
}
