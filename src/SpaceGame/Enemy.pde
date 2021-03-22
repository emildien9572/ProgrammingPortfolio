class Enemy {
  // member variables
  int x, y, health;
  char displayMode;
  color c1, c2;

  // constructor
  Enemy(color c1, color c2) {
    x = 0;
    y = 0;
    health = 100;
    displayMode = '1';
    this.c1 = c1;
    this.c2 = c2;
  }

  // member methods
  void display(int x, int y) {
    if (displayMode == '1') {
      // To Do: create enemy graphic
    }
  }
}
