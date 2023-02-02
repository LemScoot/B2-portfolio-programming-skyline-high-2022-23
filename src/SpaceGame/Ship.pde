class Ship {
  int x, y, w, ammo, turretCount, health;
  PImage jeremy;

  // Constructor
  Ship() {
    x = 0;
    y = 0;
    w = 90;
    ammo = 450;
    health = 1000;
    turretCount = 3;
    jeremy = loadImage("ship1.png");
  }

  void display() {
    jeremy.resize(200, 200);
    imageMode(CENTER);
    image(jeremy, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  boolean fire() {
    if (ammo > 0) {
      ammo--;
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock dwane) {
    float d = dist(x, y, dwane.x, dwane.y);
    if (d < 62) { // Refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
