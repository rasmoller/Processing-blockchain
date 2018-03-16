
class UI{


  boolean clickBox(int x, int y, int w, int h, String text){
    pushStyle();
    color hoverColor = 230;
    color rectColor = #ffffff;
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      fill(hoverColor);
    }
    else{
      fill(rectColor);
    }
    rect(x,y,w,h);
    textAlign(CENTER, CENTER);
    fill(#000000);
    text(text, x+(w/2), y+(h/2));
    popStyle();
    if(mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      rectColor = 230;
      return true;
    } 
    else{ 
      rectColor = 255;
      return false;
    }
  }
}