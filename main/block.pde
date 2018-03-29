
class block {

  String blockString;


  block() {
  }

  block(String[][] skema) {
    blockString = "Block: ";
    for(int i = 0; i <= skema.length - 1; i++){ //<>//
      //blockString = blockString + skema[i][0] + " " + skema[i][1] + ";  ";
      blockString+=skema[i][0] + ", " + skema[i][1] + ";  ";
    }
    println(blockString);
  }
}