class Star {
  // member variables
  int x,y,speed,dia;
  color c;
  
  // constructor
  Star(int x, int y) {
    this.x = x;
    this.y = y;
    speed = int(random(1,5));
    dia = int(random(1,4));
    c = color(random(190,255));
  }
  
  // member mathods
  void display() {
    fill(c);
    noStroke();
    ellipse(x,y,dia,dia);
  }
  
  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }
  
  void move() {
    y+=speed;
  }
}
