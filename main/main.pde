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
  L = new Draw(width/10);
  T = new teacher(width-width/5, height/3);
  N = new node(T.input(), width/2, height/5);
  U = new user(height-height/5);
  
  mainmenu = new UI();
  CState = states.MAINMENU;
}

void draw() {
    
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
    exit();
  };
}

void drawNode() {
}
void drawBlockchain() {
}