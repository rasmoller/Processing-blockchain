// Classes
UI mainmenu;

// states
enum states {
  MAINMENU, USER, TEACHER, BLOCKCHAIN, BLOCK, NODE
};
states CState;

// variables
int buffer = 20;
int butSize = 100;

void setup() {
  size(400, 400);
  mainmenu = new UI();
  CState = states.MAINMENU;
}

void draw() {
  background(190);
  switch(CState) {
  case MAINMENU:
    drawMM();
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


void drawMM(){
// draw the User View
    if (mainmenu.clickBox(buffer, buffer, butSize, butSize, "User")) {
    CState = states.USER;
    };
    // draw the teacher View
    if (mainmenu.clickBox(buffer  + butSize, buffer, butSize, butSize, "Teacher")) {
    CState = states.TEACHER;
    };
    // draw the Node View
    if (mainmenu.clickBox(buffer + butSize, buffer + butSize, 100, 100, "Node")) {
    CState = states.NODE;
    };
    // Exits the program
    if (mainmenu.clickBox(buffer, buffer + butSize, butSize, butSize, "Exit")) {
    exit();
    };


}