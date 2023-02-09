class Car {
  
  color c;
  float xpos, ypos, xspeed;
  boolean rightOrLeft;

  // Constructer

  Car() {
    c = color(random(255), random(255), random(255));
    xpos = random(width);
    ypos = random(height);
    xspeed = random(1, 5);
  }
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(0);
    rect(xpos - 7, ypos - 5, 6, 2);
    rect(xpos - 7, ypos + 5, 6, 2);
    rect(xpos + 7, ypos - 5, 6, 2);
    rect(xpos + 7, ypos + 5, 6, 2);
  }

  void driveRight() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }

  void driveLeft() {
    xpos = xpos - xspeed;
    if (xpos < 0) {
      xpos = width;
    }
  }
}
