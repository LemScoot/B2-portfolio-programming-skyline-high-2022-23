// Liam Scott | 4 Oct 2022 | Temperature Converter

void setup() {}

void draw() {
  println(farToCel(50.0));
  println(celToFar(19.4));
}

float farToCel(float val) {
  val = (val - 32.0) * 5.0/9.0;
  return val;
}

float celToFar(float val) {
  val = val * 9/5 + 32.0;
  return val;
}
