// Liam Scott | OCt 25 2022 | Cars Excercise

boolean rightOrLeft;

Car[] cars = new Car[10];

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < cars.length; i++) {
    cars[i] = new Car();
  }
}

void draw() {
  background(100);
  for (int i = 0; i < cars.length; i++) {
    if (i >= cars.length / 2) {
      rightOrLeft = true;
    } else {
      rightOrLeft = false;
    }
    if (rightOrLeft) {
      cars[i].driveRight();
    } else {
      cars[i].driveLeft();
    }
    cars[i].display();
  };
}
