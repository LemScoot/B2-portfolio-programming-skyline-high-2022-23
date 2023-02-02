// Liam Scott | August 30 2022 | ColDet
int xspeed, yspeed;
int xpos, ypos, wdth, ht;

// Setup runs once at the beginning
void setup() {
  size(displayWidth, displayHeight);
  background(255);
  xspeed = 3;
  yspeed = 5;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
// Draw runs on a loop
void draw() {
  background(0);
  fill(255);
  ellipse(xpos, ypos, wdth, ht);
  ellipse(ypos, xpos, ht, wdth);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    yspeed *= -1;
  }
}
