void setup() {
  size(400,220);
}

void draw() {
  background(255);
  line(0,100,width,100);
  ellipse(mouseX, 100,10,10);
  fill(0);
  textAlign(CENTER);
  text("Value: " + mouseX,mouseX,85);
  text("Inches to Feet: " + impToMet(mouseX),width/2,150);
  for(int i=0; i<width; i+=12) {
    line(i,95,i,105);
    fill(0);
    textSize(20);
    text(60,i,width+5+i);
  }
}

float metToImp(float val) {
  val = (val*8.115);
  return val;
}

float impToMet(float val) {
  val = (val/8.115);
  return val;
}
