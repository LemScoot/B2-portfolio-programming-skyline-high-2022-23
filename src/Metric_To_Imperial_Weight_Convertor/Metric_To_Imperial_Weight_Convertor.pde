// Liam Scott | Oct 6 2022 | Metric to Imperial Weight Convertor (Pounds to Kilograms) (Use Mouse)

boolean play;

void setup() {
  size(500, 220);
}

void draw() {
  background(127, 180, 127);
  line(0, 100, width, 100);
  ellipse(mouseX, 100, 10, 10);
  fill(255, 127, 0);
  textAlign(CENTER);
  text("Value: " + mouseX, mouseX, 85);
  text("Metric To Imperial: " + metToImp(mouseX), width/2, 50);
  text("Imperial To Metric: " + impToMet(mouseX), width/2, 150);
  for (int i=0; i<width; i+=25) {
    line(i, 95, i, 105);
    fill(0);
    textSize(20);
    text(60, i, width+5+i);

    // startscreen
    if (!play) {
      startScreen();
    }
  }
}

float metToImp(float val) {
  val = (val*2.205);
  return val;
}

float impToMet(float val) {
  val = (val/2.205);
  return val;
}

void startScreen() {
  background(127, 230, 127);
  textAlign(CENTER);
  textSize(20);
  fill(255, 127, 0);
  text("Welcome to the Weight Convertor", width/2, height/2-55);
  text("This is a weight convertor \nfrom Metric to Imperial.", width/2, height/2-35);
  text("If you want to play this game\nPress Spacebar", width/2, height/2+20);
}

void keyPressed() {
  if (keyCode == ' ') {
    play = true;
  }
}
