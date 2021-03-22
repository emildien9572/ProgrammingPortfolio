class SpaceShip {
  // member variables
  int x, y, health, ammo, lives, rad;
  char displayMode;
  color c1, c2, c3;
  //PImage spaceship1;
  

  // constructor
  SpaceShip(color c1, color c2, color c3) {
    x = 0;
    y = 0;
    health = 100;
    ammo = 1000;
    lives = 3;
    rad = 25;
    displayMode = '1';
    this.c1 = c1;
    this.c2 = c2;
    this.c3 = c3;
    //spaceship1 = loadImage("Spaceship.jpg");
  }
  
  // collision for rocks and spaceship
  boolean rockIntersection(Rock rock) {
    float distance = dist(x,y,rock.x,rock.y);
    if(distance < rad + rock.rad) {
      return true;
    } else {
      return false;
    }
  }

  // member methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    if (displayMode == '1') {
      //image(spaceship1, 0, 0);
      strokeWeight(2);
      rectMode(CENTER);
      noStroke();
      fill(c2);
      rect(x-20, y+35, 9, 7);
      rect(x+20, y+35, 9, 7);
      fill(c3);
      triangle(x, y-10, x+40, y+35, x-40, y+35);
      rect(x-39, y+25, 2, 20);
      rect(x+39, y+25, 2, 20);
      fill(c2);
      ellipse(x, y, 20, 80);
      rect(x, y+15, 18, 50);
      fill(c3);
      rect(x, y+15, 3, 40);
      fill(c1);
      ellipse(x, y-17, 8, 8);
    }
  }
}
