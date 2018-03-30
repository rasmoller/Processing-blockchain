
class block {

  String blockString;


  block() {
  }

  block(String[][] skema) {
    //blockString = "Date: ";
    //blockString += skema[0][0] + "/ " + skema[0][1] + ";  ";
    blockString += "Students: ";
    for(int i = 0; i <= skema.length - 1; i++){ //<>//
      //blockString += navn, true/false;
      blockString += skema[i][0] + ", " + skema[i][1] + ";  ";
    }
    println(blockString);
  }
}