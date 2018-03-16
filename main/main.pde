UI mainmenu;
enum states {
  MAINMENU, USER, TEACHER, BLOCKCHAIN, BLOCK, NODE
};
states CState;

void setup() {
  size(400, 400);
  mainmenu = new UI();
  CState = states.MAINMENU;
}

void draw() {
  background(190);
  switch(CState) {
  case MAINMENU:

    if (mainmenu.clickBox(20, 20, 100, 100, "Student")) {
    
    };
    if (mainmenu.clickBox(140, 20, 100, 100, "Teacher")) {
    
    };
    if (mainmenu.clickBox(140, 140, 100, 100, "Node")) {
    
    };
    if (mainmenu.clickBox(20, 140, 100, 100, "Exit")) {
    exit();
    };

    break;

  case USER:

    break;

  case TEACHER:

    break;

  case BLOCK:

    break;

  case BLOCKCHAIN:

    break;

  case NODE:

    break;
  }
}