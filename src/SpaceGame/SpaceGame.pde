// Liam Scott | Nov 29 2022 | SpaceGame

Ship jeremy;
ArrayList<Rock> dwanes = new ArrayList<Rock>();
ArrayList<PowerUp> parrys = new ArrayList<PowerUp>();
ArrayList<Laser> larrys = new ArrayList<Laser>();
Star[] harrys = new Star[200];
Timer rockTimer, puTimer;
int score, level;
boolean play;

void setup() {
  size(900, 900);
  // Ship
  jeremy = new Ship();
  // Rocks
  rockTimer = new Timer(800);
  rockTimer.start();
  // PowerUp Timer
  puTimer = new Timer(5000);
  puTimer.start();
  // Stars
  for (int i = 0; i < harrys.length; i++) {
    harrys[i] = new Star();
  }

  // Random Stuff
  score = 0;
  level = 1;
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);
    noCursor();

    // Rendering of the Stars
    for (int i = 0; i < harrys.length; i++) {
      harrys[i].display();
      harrys[i].move();
    }

    // Adding PowerUps
    if (puTimer.isFinished()) {
      parrys.add(new PowerUp());
      puTimer.start();
    }

    // Rendering of the PowerUps
    for (int i = 0; i < parrys.size(); i++) {
      PowerUp pu = parrys.get(i);
      if (pu.intersect(jeremy)) {
        if (pu.type == 'H') {
          jeremy.health += 100;
        } else if (pu.type == 'A') {
          jeremy.ammo += 250;
        } else if (pu.type == 'T') {
          jeremy.turretCount++;
        }
        parrys.remove(pu);
      }
      if (pu.reachedBottom()) {
        parrys.remove(pu);
      } else {
        pu.display();
        pu.move();
        println(parrys.size());
      }
    }

    // Adding Rocks
    if (rockTimer.isFinished()) {
      dwanes.add(new Rock());
      rockTimer.start();
    }

    // Rendering of the Rocks
    for (int i = 0; i < dwanes.size(); i++) {
      Rock r = dwanes.get(i);
      if (jeremy.intersect(r)) {
        jeremy.health -= r.diam;
        score += r.diam;
        // Todo: add health to rocks
        // Todo: make and explosion sound
        // Todo: make and explosion animation
        dwanes.remove(r);
      }
      if (r.reachedBottom()) {
        dwanes.remove(r);
      } else {
        r.display();
        r.move();
        println(dwanes.size());
      }
    }

    // Rendering of the Ship
    jeremy.display();
    jeremy.move(mouseX, mouseY);

    //Rendering of the Lasers
    for (int i = larrys.size()-1; i >= 0; i--) {
      Laser l = larrys.get(i);
      for (int j = 0; j < dwanes.size(); j++) {
        Rock r = dwanes.get(j);
        if (l.intersect(r)) {
          score += r.diam;

          // Level increase
          if (score%100 == 0) {
            level += 1;
            jeremy.ammo += 100;
          }

          dwanes.remove(r);
          // r.health -= 50;
          larrys.remove(l);
        }
      }
      if (l.reachedTop()) {
        larrys.remove(l);
      } else {
        l.display();
        l.move();
      }
    }

    // Other methods
    infoPanel();

    if (jeremy.health < 1) {
      gameOver();
    }
  }
}


void mousePressed() {
  if (jeremy.fire() && jeremy.turretCount == 1) {
    larrys.add(new Laser(jeremy.x, jeremy.y));
    println(larrys.size());
  } else if (jeremy.fire() && jeremy.turretCount == 2) {
    larrys.add(new Laser(jeremy.x-20, jeremy.y));
    larrys.add(new Laser(jeremy.x+20, jeremy.y));
    println(larrys.size());
  } else if (jeremy.fire() && jeremy.turretCount == 3) {
    larrys.add(new Laser(jeremy.x, jeremy.y-30));
    larrys.add(new Laser(jeremy.x-15, jeremy.y-20));
    larrys.add(new Laser(jeremy.x+15, jeremy.y-20));
    println(larrys.size());
  }
}

void infoPanel() {
  fill(128, 0);
  noStroke();
  rectMode(CENTER);
  rect(width/2, 25, width, 50);
  fill(255);
  textSize(35);
  textAlign(CENTER);
  text("Score: " + score +
    " | Level: " + level +
    " | Ammo: " + jeremy.ammo +
    " | Health: " + jeremy.health, width/2, 40);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Welcome to RockMania!!", width/2, height/2-30);
  text("Hope you will like this game I made!", width/2, height/2+15);
  text("Press any key to play", width/2, height/2+60);

  // Render Stars
  for (int i = 0; i < harrys.length; i++) {
    harrys[i].display();
    harrys[i].move();
  }
  if (keyPressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, height/2);
  play = false;
  noLoop();
}

void ticker() {
}
