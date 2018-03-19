// Classes
UI mainmenu;
Draw L;
node N;
teacher T;
user U;

// states
enum states {
  MAINMENU, BLOCKCHAIN, BLOCK
};
states CState;

// variables
int buffer = 20;
int butSize = 100;
float size;
int runOnce = 1;

void setup() {
  fullScreen();
  N = new node();
  T = new teacher();
  U = new user();
  L = new Draw();
  mainmenu = new UI();
  CState = states.MAINMENU;
}

void draw() {
  if (runOnce == 1) {
    runOnce = 0;
    L.sizeIni(width/10);  
    T.posTeacher(width-width/5, height/3);
    N.posNode(width/2, height/5);
    U.posUser(height-height/5);
    N.receiveDataTeacher(T.input());
  }
  background(190);
  switch(CState) {
  case MAINMENU:
    drawMM();
    break;

  case BLOCK:

    break;

  case BLOCKCHAIN:

    break;
  }
}


void drawMM() {
  // draw the User View
  L.draws();
  N.drawTableTeacher();
  N.DeawTableUsers();
  // Exits the program
  if (mainmenu.clickBox(buffer, buffer + butSize, butSize, butSize, "Exit")) {
    //exit();
  };
}

void drawUser() {
}


void drawTeacher() {
}

void drawNode() {
}
void drawBlock() {
}
void drawBlockchain() {
}
