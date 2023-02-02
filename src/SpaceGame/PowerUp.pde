class PowerUp {
  int x, y, diam, speed;
  char type;
  // PImage rock;

  // Constructor
  PowerUp() {
    x = int(random(width));
    y = -100;
    diam = 100;
    speed = 5;
    int rand = int(random(3));
    if (rand == 0) {
      type = 'H';
    } else if (rand == 1) {
      type = 'A';
    } else {
      type = 'T';
    }
  }

  void display() {
    fill(0, 255, 0);
    ellipse(x, y, diam, diam);
    fill(0);
    text(type, x, y);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height+80) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Ship jeremy) {
    float s = dist(x, y, jeremy.x, jeremy.y);
    if (s < 62) { // Refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
