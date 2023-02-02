// Liam Scott | 8 Sept 2022 | Zoog

void setup() {
  size(1000, 1000);
}

void draw() {
  //background(128);
  rectMode(CENTER);
  zoog(mouseX,mouseY);
  zoog(mouseX+30,mouseY);
  zoog(mouseX-30,mouseY);
  // zoog(int(random(width)), int(random(height)));
}

void zoog(int x, int y) {
  // Draw Zoog's body
  stroke(0);
  fill(0,255,0);
  rect(x, y, 20, 100);

  // Draw Zoog's head
  stroke(0);
  fill(0,255,0);
  ellipse(x, y-30, 60, 60);

  // Draw Zoog's eyes
  fill(0,195,0);
  ellipse(x+18, y-30, 16, 32);
  ellipse(x-18, y-30, 16, 32);
  
  // Draw Zoog's eyes
  fill(0, 150, 0);
  ellipse(x+18, y-30, 9, 9);
  ellipse(x-18, y-30, 9, 9);

  // Draw Zoog's legs
  stroke(0);
  line(x-10, y+50, x-20, y+60);
  line(x+10, y+50, x+20, y+60);
}
