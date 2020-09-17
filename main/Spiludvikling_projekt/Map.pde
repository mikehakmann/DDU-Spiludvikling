class WallBlock {
  int x;
  int y;
  int w;
  int h;
  
  WallBlock(int _x, int _y, int _width, int _height) {
    x = _x;
    y = _y;
    w = _width;
    h = _height;
  }
  void Draw() {
    rect(x,y,w,h);
  }
}

class Map {
    WallBlock[] blocks;
    Map() {
    fill(0);
    blocks = new WallBlock[]{
    new WallBlock(600, 75, 75, 300),   //1
    new WallBlock(75, 450, 600, 75),   //2
    new WallBlock(75, 600, 600, 450), //3
    new WallBlock(750, 1125, 75, 150),  //4
    new WallBlock(750, 150, 75, 900),  //5
    new WallBlock(900, 150, 75, 375),  //6
    new WallBlock(900, 450, 300, 75),  //7
    new WallBlock(1050, 75, 75, 300),   //8
    new WallBlock(1050, 300, 600, 75),  //9
    new WallBlock(1725, 75, 75, 450),  //10
    new WallBlock(1275, 75, 450, 75),   //11
    new WallBlock(1725, 450, 225, 75), //12
    new WallBlock(2025, 450, 525, 75), //13
    new WallBlock(1275, 450, 375, 75),  //14
    new WallBlock(1575, 450, 75, 450), //15
    new WallBlock(1725, 600, 75, 375), //16
    new WallBlock(1575, 975, 450, 75), //17
    new WallBlock(2100, 975, 150, 75), //18
    new WallBlock(1950, 1050, 75, 75),  //19
    new WallBlock(1950, 1200, 75, 225),  //20
    new WallBlock(1425, 600, 75, 675),  //21
    new WallBlock(900, 600, 150, 75),  //22
    new WallBlock(1125, 600, 225, 75),  //23
    new WallBlock(900, 600, 75, 300),  //24
    new WallBlock(900, 825, 450, 75), //25
    new WallBlock(1275, 675, 75, 150),  //26
    new WallBlock(1875, 600, 375, 75), //27
    new WallBlock(1875, 600, 75, 300), //28
    new WallBlock(1875, 825, 150, 75), //29
    new WallBlock(2100, 825, 150, 75), //30
    new WallBlock(2250, 600, 75, 300), 
    new WallBlock(2400, 525, 150, 900),
    new WallBlock(2250, 975, 75, 300),
    new WallBlock(2250, 1350, 75, 75),
    new WallBlock(1425, 1350, 75, 75),
    new WallBlock(1575, 1125, 300, 225),
    new WallBlock(750, 1350, 75, 75),
    new WallBlock(300, 1275, 75, 150),
    new WallBlock(300, 1050, 75, 150)
    };
  }
    void drawMap() {
    fill(1);

    rect(0, 0, width, 75 );          //Border
    rect(0, 0, 75, height);          //Border
    rect(0, height-50, width, 50);   //Border
    rect(width-75, 0, 75, height);   //Border
    
    for(int i = 0; i < blocks.length; i++) {
      blocks[i].Draw();
    }
  }
}
