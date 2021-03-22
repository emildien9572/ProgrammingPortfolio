class Button {
  // Menber Variable
  int x, y, h, w;
  String val;
  color c1, c2;
  boolean hover, isNumber;

  // Constructor
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber, color tempC1, color tempC2) { // color tempC1, color tempC2,
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    c1 = tempC1;
    c2 = tempC2;
    hover = false;
    this.isNumber = isNumber;
  }

  // Method for Display
  void display() {
    if (isNumber == true) {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      noStroke();
      rect(x, y, w, h, 3);
      fill(0);
      textAlign(CENTER);
      textSize(12);
      text(val, x+w/2, y+h/1.5);
    } else {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      noStroke();
      rect(x, y, w, h, 3);
      fill(0);
      textAlign(CENTER);
      text(val, x+w/2, y+h/1.5);
    }
  }

  // Method for mouse interaction
  void hover() {
    hover = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
  }
}
