
class UI{
  color hoverColor;
  color rectColor;
  
  UI(color rect, color hover){
    rectColor = rect;
    hoverColor = hover;
  }
  UI(){
  hoverColor = 230;
  rectColor = #ffffff;
  }

  boolean clickBox(int x, int y, int w, int h, String text){
    pushStyle();
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
      return true;
    } 
    else{
      return false;
    }
  }
  
  boolean toggleBut(float x, float y, float h, float w){
  boolean value = true;
  pushStyle();
    rect(x,y,w,h);
    if(value==true){
    fill(0,255,0);
    }else{
    fill(255,0,0);
    }
    if(mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
      value = !value;
    }
  return value;
  }
}