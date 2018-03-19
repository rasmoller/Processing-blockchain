
class teacher {
  int numbersOfTeachers = 1;
  String[] names = new String[]{"Rasmus Møller", "Casper Bang", "Bastian Aron", "Masthias Klovn", "Mads Fisk", "TABER", "1", "2", "3", "4"};
  float _xStart;
  float _yStart;
  float[][] posTeachers = new float[numbersOfTeachers][2];
  
  teacher(float xStart, float yStart){
  float size = L.SizeCircle();
    _xStart = xStart;
    _yStart = yStart;
    for (int i = 0; i <= numbersOfTeachers-1; i++) {
      float nextPos = height/80 + size;
      posTeachers[i][0] = xStart;
      posTeachers[i][1] = yStart + nextPos*i;
    }
  
  }
  float xStart() {
    return _xStart;
  }
  float yStart() {
    return _yStart;
  }

  float[][] allPosTeachers() {
    return posTeachers;
  }

  String[][] input() {
    String[][] skema = new String[names.length][2];

    for (int i = 0; i <= names.length-1; i++) {
      skema[i][0] = names[i];
      skema[i][1] = Random();
    }


    return skema;
  }


  String Random() {

    String fravaer;
    int randomNumber = int(random(1, 100));
    if (randomNumber >= names.length - 1/names.length) {
      fravaer = "true";
    } else {
      fravaer = "false";
    }

    return fravaer;
  }
}