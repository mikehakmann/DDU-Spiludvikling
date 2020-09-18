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
    float d=100000;
    blocks = new WallBlock[]{    
      new WallBlock((d*600)/2560*width/d, (75*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), //1
      new WallBlock((d*75)/2560*width/d, (450*d)/1440*height/d, (600*d)/2560*width/d, (75*d)/1440*height/d), //2
      new WallBlock((d*75)/2560*width/d, (600*d)/1440*height/d, (600*d)/2560*width/d, (450*d)/1440*height/d), //3
      new WallBlock((d*750)/2560*width/d, (1125*d)/1440*height/d, (75*d)/2560*width/d, (150*d)/1440*height/d), //4
      new WallBlock((d*750)/2560*width/d, (150*d)/1440*height/d, (75*d)/2560*width/d, (900*d)/1440*height/d), //5
      new WallBlock((d*900)/2560*width/d, (150*d)/1440*height/d, (75*d)/2560*width/d, (375*d)/1440*height/d), //6
      new WallBlock((d*900)/2560*width/d, (450*d)/1440*height/d, (300*d)/2560*width/d, (75*d)/1440*height/d), //7
      new WallBlock((d*1050)/2560*width/d, (75*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), //8
      new WallBlock((d*1050)/2560*width/d, (300*d)/1440*height/d, (600*d)/2560*width/d, (75*d)/1440*height/d), //9
      new WallBlock((d*1725)/2560*width/d, (75*d)/1440*height/d, (75*d)/2560*width/d, (450*d)/1440*height/d), //10
      new WallBlock((d*1275)/2560*width/d, (75*d)/1440*height/d, (450*d)/2560*width/d, (75*d)/1440*height/d), //11
      new WallBlock((d*1725)/2560*width/d, (450*d)/1440*height/d, (225*d)/2560*width/d, (75*d)/1440*height/d), //12
      new WallBlock((d*2025)/2560*width/d, (450*d)/1440*height/d, (525*d)/2560*width/d, (75*d)/1440*height/d), //13
      new WallBlock((d*1275)/2560*width/d, (450*d)/1440*height/d, (375*d)/2560*width/d, (75*d)/1440*height/d), //14
      new WallBlock((d*1575)/2560*width/d, (450*d)/1440*height/d, (75*d)/2560*width/d, (450*d)/1440*height/d), //15
      new WallBlock((d*1725)/2560*width/d, (600*d)/1440*height/d, (75*d)/2560*width/d, (375*d)/1440*height/d), //16
      new WallBlock((d*1575)/2560*width/d, (975*d)/1440*height/d, (450*d)/2560*width/d, (75*d)/1440*height/d), //17
      new WallBlock((d*2100)/2560*width/d, (975*d)/1440*height/d, (150*d)/2560*width/d, (75*d)/1440*height/d), //18
      new WallBlock((d*1950)/2560*width/d, (1050*d)/1440*height/d, (75*d)/2560*width/d, (75*d)/1440*height/d), //19
      new WallBlock((d*1950)/2560*width/d, (1200*d)/1440*height/d, (75*d)/2560*width/d, (225*d)/1440*height/d), //20
      new WallBlock((d*1425)/2560*width/d, (600*d)/1440*height/d, (75*d)/2560*width/d, (675*d)/1440*height/d), //21
      new WallBlock((d*900)/2560*width/d, (600*d)/1440*height/d, (150*d)/2560*width/d, (75*d)/1440*height/d), //22
      new WallBlock((d*1125)/2560*width/d, (600*d)/1440*height/d, (225*d)/2560*width/d, (75*d)/1440*height/d), //23
      new WallBlock((d*900)/2560*width/d, (600*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), //24
      new WallBlock((d*900)/2560*width/d, (825*d)/1440*height/d, (450*d)/2560*width/d, (75*d)/1440*height/d), //25
      new WallBlock((d*1275)/2560*width/d, (675*d)/1440*height/d, (75*d)/2560*width/d, (150*d)/1440*height/d), //26
      new WallBlock((d*1875)/2560*width/d, (600*d)/1440*height/d, (375*d)/2560*width/d, (75*d)/1440*height/d), //27
      new WallBlock((d*1875)/2560*width/d, (600*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), //28
      new WallBlock((d*1875)/2560*width/d, (825*d)/1440*height/d, (150*d)/2560*width/d, (75*d)/1440*height/d), //29
      new WallBlock((d*2100)/2560*width/d, (825*d)/1440*height/d, (150*d)/2560*width/d, (75*d)/1440*height/d), //30
      new WallBlock((d*2250)/2560*width/d, (600*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), 
      new WallBlock((d*2400)/2560*width/d, (525*d)/1440*height/d, (150*d)/2560*width/d, (900*d)/1440*height/d), 
      new WallBlock((d*2250)/2560*width/d, (975*d)/1440*height/d, (75*d)/2560*width/d, (300*d)/1440*height/d), 
      new WallBlock((d*2250)/2560*width/d, (1350*d)/1440*height/d, (75*d)/2560*width/d, (75*d)/1440*height/d), 
      new WallBlock((d*1425)/2560*width/d, (1350*d)/1440*height/d, (75*d)/2560*width/d, (75*d)/1440*height/d), 
      new WallBlock((d*1575)/2560*width/d, (1125*d)/1440*height/d, (300*d)/2560*width/d, (225*d)/1440*height/d), 
      new WallBlock((d*750)/2560*width/d, (1350*d)/1440*height/d, (75*d)/2560*width/d, (75*d)/1440*height/d), 
      new WallBlock((d*300)/2560*width/d, (1275*d)/1440*height/d, (75*d)/2560*width/d, (150*d)/1440*height/d), 
      new WallBlock((d*300)/2560*width/d, (1050*d)/1440*height/d, (75*d)/2560*width/d, (150*d)/1440*height/d)
    };
  }
  void drawMap() {
    fill(0);
    float d=100000;

    rect(0, 0, width, (75*d)/1440*height/d );          //Border
    rect(0, 0, (75*d)/2560*width/d, height);          //Border
    rect(0, height-((50*d)/1440*height/d), width, (50*d)/1440*height/d);   //Border
    rect(width-((75*d)/2560*width/d), 0, (75*d)/2560*width/d, height);   //Border

    for (int i = 0; i < blocks.length; i++) {
      blocks[i].Draw();
    }
  }
}
