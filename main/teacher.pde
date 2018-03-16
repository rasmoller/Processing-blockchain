
class teacher extends user{

  String[] names = new String[]{"Rasmus Møller", "Casper Bang", "Bastian Aron", "Masthias Klovn", "Mads Fisk"};


  String[][] Input() {
    String name;
    int jump = 10;
    String[][] skema = new String[names.length][2];

    for (int i = 0; i <= names.length-1; i++) {
      name = names[i];
      skema[i][0] = names[i];
      skema[i][1] = Random();
    }


    return skema;
  }


  String Random() {
    
    String fravaer;
    int randomNumber = int(random(1, 100));
    if(randomNumber >= names.length - 1/names.length){
      fravaer = "true";
    } else {
      fravaer = "false";
    }
    
    return fravaer;
  }
}
