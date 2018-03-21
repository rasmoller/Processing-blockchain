
class UI {
  color hoverColor;
  color rectColor;
  int tSize;

  UI(color rect, color hover, int tSize) {
    rectColor = rect;
    hoverColor = hover;
    this.tSize = tSize;
  }
  UI() {
    hoverColor = 230;
    rectColor = #ffffff;
    tSize = 20;
  }

  boolean clickBox(int x, int y, int w, int h, String text) {
    pushStyle();
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      fill(hoverColor);
    } else {
      fill(rectColor);
    }
    rect(x, y, w, h);
    textAlign(CENTER, CENTER);
    textSize(tSize);
    fill(#000000);
    text(text, x+(w/2), y+(h/2));
    popStyle();
    if (mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      return true;
    } else {
      return false;
    }
  }

  boolean toggleBut(float x, float y, float h, float w, boolean value) {
    pushStyle();
    if (mousePressed && mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      value = !value;
    }
    if (value==true) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    rect(x, y, w, h);
    popStyle();
    return value;
  }
}
