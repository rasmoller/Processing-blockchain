 //<>//
class block {

  String blockString;
  String Dato;


  block() {
  }

  block(String[][] skema) {
    Dag++;
    if (Dag == 31) {
      Dag = 0; 
      Maaned++;
    }
    if (Maaned == 13) {
      Maaned = 0;
      aar++;
    }

    Dato = Dag + "/" + Maaned + "/" + aar;
    blockString = "Dato: " + Dato + ". ";
    //blockString += skema[0][0] + "/ " + skema[0][1] + ";  ";
    blockString += "Students: ";
    for (int i = 0; i <= skema.length - 1; i++) {
      //blockString += navn, true/false;
      blockString += skema[i][0] + ", " + skema[i][1] + ";  ";
    }
    //println(blockString);
  }
  String display() {
    return(blockString);
  }
  String Dato(){
    return(Dato);
  }
  
}
