// Global Variable
int x, y;

void setup() {
  size(600, 500);
  frameRate(10);
  x = 10;
  y = 10;
}

void draw() {
  fill(0);
  strokeWeight(3);
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      moveRight(5);
    } else if (key == 'a' || key == 'A') {
      moveLeft(5);
    } else if (key == 'w' || key == 'W') {
      moveUp(5);
    } else if (key == 's' || key == 'S') {
      moveDown(5);
    }
  }
  //drawName();
  //noLoop();
}

void mousePressed() {
  saveFrame("line-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight(5);
    } else if (keyCode == LEFT) {
      moveLeft(5);
    } else if (keyCode == UP) {
      moveUp(5);
    } else if (keyCode == DOWN) {
      moveDown(5);
    }
  }
}

void drawName() {
  //moveRight(50);
  //moveLeft(50);
  //moveDown(25);
  //moveRight(45);
  //moveLeft(45);
  //moveDown(25);
  //moveRight(60);
  //moveUp(50);
  //moveRightDown(25);
  //moveRightUp(25);
  //moveDown(50);
  //moveRight(35);
  //moveUp(50);
  //moveLeft(25);
  //moveRight(50);
  //moveLeft(25);
  //moveDown(50);
  //moveRight(35);
  //moveUp(50);
  //moveDown(50);
  //moveRight(60);
  //moveUp(25);
  //moveLeftUp(25);
  //moveRightDown(25);
  //moveRightUp(25);
  //moveLeftDown(25);
  //moveLeftUp(0);
  //moveLeftDown(0);
}

// Method to draw right lines
void moveRight(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+rep;
}

// Method to draw lines down
void moveDown(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

// Method to draw left lines
void moveLeft(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-rep;
}

// Method to draw lines up
void moveUp(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-rep;
}

//Method to draw right and down lines
void moveRightDown(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x+i, y+i);
  }
  y=y+rep;
  x=x+rep;
}

// Method to draw right and up lines
void moveRightUp(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x+i, y-i);
  }
  y=y-rep;
  x=x+rep;
}

// Method to draw left and up lines
void moveLeftUp(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x-i, y-i);
  }
  y=y-rep;
  x=x-rep;
}

// Method to draw left and down
void moveLeftDown(int rep) {
  for (int i = 0; i<rep; i++) {
    point(x-i, y+i);
  }
  y=y+rep;
  x=x-rep;
}
