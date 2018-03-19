
class node {

  String[][] _skema;
  int numbersOfNodes = 1;
  float _xStart;
  float _yStart;
  float[][] posNodes = new float[numbersOfNodes][2];
  float x = 0;
  float y = 0;
  float speed= 100;
  float[][] UserPos;
  boolean runOnce = true;


  float xStart() {
    return _xStart;
  }
  float yStart() {
    return _yStart;
  }

  float[][] allPosNodes() {
    return posNodes;
  }


  void receiveDataTeacher(String[][] skema) {
    _skema = skema;
  }


  String[][] sendData(String[][] skema) {

    return skema;
  }

  void posNode(float xStart, float yStart) {
    float size = L.SizeCircle();
    _xStart = xStart;
    _yStart = yStart;
    for (int i = 0; i <= numbersOfNodes-1; i++) {
      float nextPos = height/80 + size;
      posNodes[i][0] = xStart;
      posNodes[i][1] = yStart + nextPos*i;
    }
  }
  void drawTableTeacher() {
    float sizeSquareY = (height/4)/8;
    float sizeSquareX = (width/10);
    int FontSize = 10;
    if (x == 0) {
      x = T.xStart();
      y = T.yStart();
    }
    //println(x + "    " + N.xStart(), y + "    " + N.yStart());
    if (x >= N.xStart() && y >= N.yStart()) {
      x = x - (T.xStart()-N.xStart())/speed;
      y = y - (T.yStart()-N.yStart())/speed;
    }
    for (int i = 0; i <= _skema.length-1; i++) {
      pushStyle();
      if (i == 0) {
        pushStyle();
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(x, y, sizeSquareX, _skema.length*FontSize+20);
        popStyle();
      }
      fill(255, 0, 0);
      textSize(FontSize);
      textAlign(LEFT, TOP);
      text(_skema[i][0], x-(sizeSquareX-10)/2, y + i*FontSize - (_skema.length*FontSize)/2);
      text(_skema[i][1], x-(sizeSquareX-320)/2, y + i*FontSize - (_skema.length*FontSize)/2);
      popStyle();
    }
  }
  boolean xPos() {
    boolean xPos;
    if (x <= N.xStart() && y <= N.yStart()) {
      xPos = true;
    } else {
      xPos= false;
    }
    return xPos;
  }

  void DeawTableUsers() {
    float sizeSquareY = (height/4)/8;
    float sizeSquareX = (width/10);
    int FontSize = 10;



    if (xPos() == true) {
      for (int w = 0; w <= U.allPosUsers().length - 1; w++) {
        if (UserPos == null) {
          UserPos = new float[U.allPosUsers().length][2];
          UserPos = new float[U.allPosUsers().length][2];
        }
        if (UserPos[w][0] == 0) {
          UserPos[w][0] = x;
          UserPos[w][1] = y;
        }
        for (int i = 0; i <= _skema.length-1; i++) {
          pushStyle();
          fill(255, 0, 0, 255);
          textSize(FontSize);
          textAlign(LEFT, TOP);
          if (U.allPosUsers()[w][1] >= UserPos[w][1] || runOnce == true) {
            UserPos[w][0] = UserPos[w][0] - (N.xStart()-U.allPosUsers()[w][0])/(speed*10);
            UserPos[w][1] = UserPos[w][1] - (N.yStart()-U.allPosUsers()[w][1])/(speed*10);
          }
          if (i == 0) {
            pushStyle();
            fill(255, 255, 255);
            rectMode(CENTER);
            rect(UserPos[w][0], UserPos[w][1], sizeSquareX, _skema.length*FontSize+20);
            popStyle();
          }
          runOnce = false;
          text(_skema[i][0], UserPos[w][0]-(sizeSquareX-10)/2, UserPos[w][1] + i*FontSize - (_skema.length*FontSize)/2);
          text(_skema[i][1], UserPos[w][0]-(sizeSquareX-320)/2, UserPos[w][1] + i*FontSize - (_skema.length*FontSize)/2);
          popStyle();
        }
      }
    }
  }
}
