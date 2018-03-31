// Classes //<>//
UI mainmenu;
Draw L;
node N;
teacher T;
user U;
block B;
blockchain BC = new blockchain();

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
int Dag =  day();
int Maaned = month();
int aar = year();

void setup() {
  dayEnded = false;
  fullScreen();
  L = new Draw(width/10);
  T = new teacher(width-width/5, height/3);
  N = new node(T.input(), width/2, height/5);
  U = new user(height-height/5);
  B = new block();
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
    drawBlockchain();
    break;
  }
}


void drawMM() {
  // draw the User View
  L.draws();
  N.drawTableTeacher();
  N.DrawTableUsers();
  // Exits the program
  if (mainmenu.clickBox(buffer, buffer, butSize, butSize, "Exit")) {
    exit();
  }
  if (BC.chain.size() >= 1) {
    if (mainmenu.clickBox(int(buffer*6.5), buffer, butSize, butSize, "Blockchain")) {
      delay(100);
      CState = states.BLOCKCHAIN;
      /*println(BC.fetchBlock(0).display());
       println(BC.fetchBlock(0).Dato());
       println(" ");
       println(BC.fetchBlock(1).display());
       println(BC.fetchBlock(1).Dato());
       println(" ");*/
    }
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
  if (mainmenu.clickBox(buffer, buffer, butSize, butSize, "Exit")) {
    exit();
  }
  if (mainmenu.clickBox(int(buffer*6.5), buffer, butSize, butSize, "Simulation")) {
    CState = states.MAINMENU;
    delay(100);
    /*println(BC.fetchBlock(0).display());
     println(BC.fetchBlock(0).Dato());
     println(" ");
     println(BC.fetchBlock(1).display());
     println(BC.fetchBlock(1).Dato());
     println(" ");*/
  }
  int textSize = 30;
  for (int i = 0; i <= BC.chain.size(); i++) {
    pushStyle();
    fill(255);
    rect(width/2-(width/2)/2, height/8, width/2, height/10);
    fill(0);
    textAlign(CENTER);
    textSize(textSize);
    text("Blockchain", width/2, height/8+(height/10)/2+textSize/2);

    if (i > 0) {
      fill(255);
      rect(width/2-(width/2)/2, height/8 + height/10 +(height/50*i-1), width/2, height/50);
      fill(0);
      textSize(10);
      text(BC.fetchBlock(i-1).display(), width/2, height/8 + height/10 + height/50*i-1 + textSize/2);
    }
    popStyle();
  }
}