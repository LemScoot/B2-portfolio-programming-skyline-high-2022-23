class Button {
  // Member Variables
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean on;

  // Constructor
  Button(int x, int y, int w, int h, char val, color c1) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1 = c1;
    c2 = color(58, 100, 54);
    on = false;
  }

  // Member Methods
  void display() {
    if (!on) {
      fill(c1);
    } else {
      fill(c2);
    }
    rectMode(CENTER);
    rect(x, y, w, h, 20);
    textAlign(CENTER);
    fill(255);
    text(val, x, y);
  }

  void hover(int mx, int my) {
    on = (mx > x - w/2 && mx < x + w/2 && my > y - h/2 && my < y + h/2);
  }
}
