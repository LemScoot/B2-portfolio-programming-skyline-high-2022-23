// Liam Scott | 4 Oct 2022 | Etch-A-Sketch
int x, y;

void setup() {}

void draw() {}

void keyPressed() {}

void moveRight(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}

// Method to draw Left line
void moveLeft(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}

// Method to draw Up line
void moveUp(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y-i);
  }
  y = y - rep;
}

// Method to draw Down line
void moveDown(int rep) {
  for (int i = 0; i < rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
