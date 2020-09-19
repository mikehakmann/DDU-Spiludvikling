class WallBlock {
  float x;
  float y;
  float w;
  float h;

  WallBlock(float _x, float _y, float _width, float _height) {
    x = _x;
    y = _y;
    w = _width;
    h = _height;
  }
  void Draw() {
    rect(x, y, w, h);
  }
}

class Map {
  WallBlock[] blocks;
  Map() {
    fill(0);
    blocks = new WallBlock[]{    
      new WallBlock(width*0.2344, height*0.0521, width*0.02930, height*0.2083), //1
      new WallBlock(width*0.02930, height*0.3125, width*0.2344, height*0.0521), //2
      new WallBlock(width*0.02930, height*0.4167, width*0.2344, height*0.3125), //3
      new WallBlock(width*0.2930, height*0.7813, width*0.02930, height*0.1042), //4
      new WallBlock(width*0.2930, height*0.1042, width*0.02930, height*0.6250), //5
      new WallBlock(width*0.3516, height*0.1042, width*0.02930, height*0.2604), //6
      new WallBlock(width*0.3516, height*0.3125, width*0.1172, height*0.0521), //7
      new WallBlock(width*0.4102, height*0.0521, width*0.02930, height*0.2083), //8
      new WallBlock(width*0.4102, height*0.2083, width*0.2344, height*0.0521), //9
      new WallBlock(width*0.6738, height*0.0521, width*0.02930, height*0.3125), //10
      new WallBlock(width*0.4980, height*0.0521, width*0.1758, height*0.0521), //11
      new WallBlock(width*0.6738, height*0.3125, width*0.0879, height*0.0521), //12
      new WallBlock(width*0.7910, height*0.3125, width*0.2051, height*0.0521), //13
      new WallBlock(width*0.4980, height*0.3125, width*0.1465, height*0.0521), //14
      new WallBlock(width*0.6152, height*0.3125, width*0.02930, height*0.3125), //15
      new WallBlock(width*0.6738, height*0.4167, width*0.02930, height*0.2604), //16
      new WallBlock(width*0.6152, height*0.6771, width*0.1758, height*0.0521), //17
      new WallBlock(width*0.8203, height*0.6771, width*0.05859, height*0.0521), //18
      new WallBlock(width*0.7617, height*0.7292, width*0.02930, height*0.0521), //19
      new WallBlock(width*0.7617, height*0.8333, width*0.02930, height*0.1563), //20
      new WallBlock(width*0.5566, height*0.4167, width*0.02930, height*0.4688), //21
      new WallBlock(width*0.3516, height*0.4167, width*0.05859, height*0.0521), //22
      new WallBlock(width*0.4395, height*0.4167, width*0.0879, height*0.0521), //23
      new WallBlock(width*0.3516, height*0.4167, width*0.02930, height*0.2083), //24
      new WallBlock(width*0.3516, height*0.5729, width*0.1758, height*0.0521), //25
      new WallBlock(width*0.4980, height*0.4688, width*0.02930, height*0.1042), //26
      new WallBlock(width*0.7324, height*0.4167, width*0.1465, height*0.0521), //27
      new WallBlock(width*0.7324, height*0.4167, width*0.02930, height*0.2083), //28
      new WallBlock(width*0.7324, height*0.5729, width*0.05859, height*0.0521), //29
      new WallBlock(width*0.8203, height*0.5729, width*0.05859, height*0.0521), //30
      new WallBlock(width*0.8789, height*0.4167, width*0.02930, height*0.2083), 
      new WallBlock(width*0.9375, height*0.3646, width*0.05859, height*0.6250), 
      new WallBlock(width*0.8789, height*0.6771, width*0.02930, height*0.2083), 
      new WallBlock(width*0.8789, height*0.9375, width*0.02930, height*0.0521), 
      new WallBlock(width*0.5566, height*0.9375, width*0.02930, height*0.0521), 
      new WallBlock(width*0.6152, height*0.7813, width*0.1172, height*0.1563), 
      new WallBlock(width*0.2930, height*0.9375, width*0.02930, height*0.0521), 
      new WallBlock(width*0.1172, height*0.8854, width*0.02930, height*0.1042), 
      new WallBlock(width*0.1172, height*0.7292, width*0.02930, height*0.1042)
    };
  }
  void drawMap() {
    fill(0);

    rect(0, 0, width, height*0.0521 );          //Border
    rect(0, 0, width*0.02930, height);          //Border
    rect(0, height*0.9479, width, height*0.0521);   //Border
    rect(width*0.9707, 0, width*0.02930, height);   //Border

    for (int i = 0; i < blocks.length; i++) {
      blocks[i].Draw();
    }
  }


  void drawRoom() {

    if (playerCX > width*0.3809 && playerCX < width*0.4980  &&  playerCY> height*0.4340 && playerCY < height*0.5903) {
      //do nothing
    } else {
      rect(width*0.3809, height*0.4340, width*0.1172, height*0.1563);
    }

    if (playerCX > width*0.7617 && playerCX < width*0.8789  &&  playerCY> height*0.4167 && playerCY < height*0.5938) {
      //do nothing
    } else {
      rect(width*0.7617, height*0.4167, width*0.1172, height*0.1910);
    }

    if (playerCX > width*0.02930 && playerCX < width*0.1367  &&  playerCY> height*0.7292 && playerCY < height*0.9896) {
      //do nothing
    } else {
      rect(width*0.02930, height*0.7292, width*0.1074, height*0.2604);
    }


    if (playerCX > width*0.02930 && playerCX < width*0.2539  &&  playerCY> height*0.0521 && playerCY < height*0.3125) {
      //do nothing
    } else {
      rect(width*0.02930, height*0.0521, width*0.2246, height*0.2604);
    }


    if (playerCX > width*0.7031 && playerCX < width*0.9766  &&  playerCY > height*0.0521 && playerCY < height*0.3472) {
      //do nothing
    } else {
      rect(width*0.7031, height*0.0521, width*0.2734, height*0.2951);
    }
  }
}
