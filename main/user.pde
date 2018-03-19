
class user {
  float _yStart;
  float _xStart;
  int numbersOfUsers = 5;
  float[][] posUsers = new float[numbersOfUsers][2];


  float[][] allPosUsers() {
    return posUsers;
  }
  float xStart() {
    return _xStart;
  }
  float yStart() {
    return _yStart;
  }

  void posUser(float yStart) {
    int q = -1;
    int z = 0;
    _yStart = yStart;
    _xStart = N.xStart();
    float size = L.SizeCircle();
    for (int i = 0; i <= numbersOfUsers-1; i++) {
      float nextPos = width/10 + size;
      if (isEven(i) == true) {
        q++;
        pushStyle();
        fill(0, 0, 0);
        ellipse(N.xStart() - nextPos*q, yStart, size, size);
        popStyle();
        posUsers[i][0] = N.xStart() - nextPos*q;
        posUsers[i][1] = yStart;
      } else {
        z++;
        pushStyle();
        fill(0, 0, 0);
        ellipse(N.xStart() + nextPos*z, yStart, size, size);
        popStyle();        
        posUsers[i][0] = N.xStart() + nextPos*z;
        posUsers[i][1] = yStart;
      }
    }
  }

  boolean isEven(int n) {
    return n % 2 == 0;
  }

  boolean isOdd(int n) {
    return n % 2 != 0;
  }
}
