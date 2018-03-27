// Classes //<>//
UI mainmenu;
Draw L;
node N;
teacher T;
user U;
block B;
blockchain BC;

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
boolean dayEnded;

void setup() {
  dayEnded = false;
  fullScreen();
  L = new Draw(width/10);
  T = new teacher(width-width/5, height/3);
  N = new node(T.input(), width/2, height/5);
  U = new user(height-height/5);
  B = new block();
  BC = new blockchain();

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
  if (mainmenu.clickBox(buffer, buffer, butSize, butSize, "Exit")) {
    exit();
  }
  if (N.skemaInPos() == true && dayEnded == false) {
    if (mainmenu.clickBox(buffer, height - (buffer + butSize), butSize, butSize, "End day")) {
      dayEnded = N.AnswerToNode();
    }
  }
  if (dayEnded == true) {
    dayEnded = N.AnswerToNode();
  }
}

void drawBlockchain() {
}
