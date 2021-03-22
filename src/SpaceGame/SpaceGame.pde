// Space Game | December 2020 
// By Emily Diener
// To Do: Project Setup
import processing.sound.*;
SoundFile laser;
SpaceShip s1;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
Timer rockTimer;
int score, level;
int pass;
boolean play;
PImage enemy1, rock1;

void setup() {
  size(500, 600);
  laser = new SoundFile(this, "ATAT-SideGuns.wav");
  s1 = new SpaceShip(0, 225, #02D100);
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  rockTimer = new Timer(int(random(500, 2000)));
  rockTimer.start();
  score = 0;
  pass = 0;
  play = false;
  enemy1 = loadImage("Enemy.png");
  rock1 = loadImage("Asteroid.png");
}

void draw() {
  noCursor();
  if (!play) {
    startScreen();
  } else {
    background(0);
    stars.add(new Star(int(random(width)), int(random(height))));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (rockTimer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      rockTimer.start();
    }
    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      imageMode(CENTER);
      image(rock1, rock.x, rock.y, 50, 50);
      rock.move();
      // collision between ship and rock
      if (s1.rockIntersection(rock)) {
        rocks.remove(rock);
        s1.health-=rock.health;
      }
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }

    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      // detect rock collision
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.laserIntersection(laser)) {
          lasers.remove(laser);
          score+=5;
          rock.health-=laser.power;
          if (rock.health<1) {
            rocks.remove(rock);
            score-=rock.health;
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }

    infoPanel();

    s1.display(mouseX, mouseY);
    
    if(s1.health<1 || pass>10) {
      play = false;
      gameOver();
    }
  }
}

void mousePressed() {
  if(play) {
    laser.play();
  }
  if (s1.ammo>0) {
    lasers.add(new Laser(s1.x, s1.y));
  }
  s1.ammo--;
}

void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, 140, 50);
  rect(width-140, height-50, 140, 50);
  fill(255, 150);
  textAlign(LEFT);
  text("Health:" + s1.health, 15, height-35);
  text("Lives:" + s1.lives, 15, height-21);
  text("Ammo:" + s1.ammo, 15, height-7);
  text("Level:" + level, 400, height-21);
  text("Score:" + score, 400, height-35);
  if(pass > 7) {
    fill(255,0,0);
  }
  text("Pass:" + pass, 400, height-7);
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  text("Welcome!",width/2,height/2);
  text("Click to Continue . . .", width/2, height/2+20);
  if(mousePressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
  text("Game Over!", width/2, height/2);
  text("Final Score:" + score, width/2, height/2+20);
  noLoop();
}
