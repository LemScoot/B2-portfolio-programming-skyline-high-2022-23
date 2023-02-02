class Star {
  int x, y, diam, speed;
  color c1;

  // Constructor
  Star() {
    x = int(random(width));
    y = int(random(height));
    diam = int(random(1, 7));
    speed = int(random(3, 6));
    c1 = color(150, 120, 200);
  }

  void display() {
    fill(c1);
    circle(x, y, diam);
  }

  void move() {
    if (y > height+5) {
      y = -10;
    } else {
      y += speed;
    }
  }

  boolean reachedBottom() {
    return true;
  }
}
