UI mainmenu;
enum states {MAINMENU, USER, TEACHER, BLOCKCHAIN, BLOCK, NODE, NETWORK};
states CState;

void setup(){
size(400,400);
mainmenu = new UI();
CState = states.MAINMENU;




}

void draw(){
background(190);
switch(CState){
case MAINMENU:
  
  if(mainmenu.clickBox(20,20,100,100, "im a box")){
  
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

case NETWORK:

break;

}


}