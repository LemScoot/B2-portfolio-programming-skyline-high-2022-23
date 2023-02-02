// Liam Scott | History Of Computers | Sept 8 2022

int f=0;

void setup() {
  size(900, 400);
  background(127);
}

void draw() {
  background(127);

  // Make the Title
  fill(222);
  textAlign(CENTER);
  textSize(35);
  fill(255, 255, 0);
  text("Computer History Timeline", width/2, 60);
  textSize(20);
  colorMode(HSB);
  if (f>=255) {f = 0;} else {f++;}
  fill(f, 256, 256);
  text("by: Liam Scott", width/2, 90);
  colorMode(RGB);
  fill(256);

  // Make the Timeline
  strokeWeight(2);
  line(50, 250, 850, 250);
  fill(255, 0, 0);
  text("1940", 25, 255);
  text("1980", 875, 255);

  // Makes the timeline items
  fill(f+100, 256, 256);
  stroke(f+100, 256, 256);
  histEvent(70, 200, "Z2 - 1940", "It was an electromechanical computer \n(mechanical and relay-based) computer \nthat was completed by Konrad Zeus \nin 1940", true);
  histEvent(210, 200, "Colossus - 1943", "This computer was the first \nelectronic digital programmable computer. \nIt replaced the Lorenz SZ during WW2", true);
  histEvent(520, 200, "EDSAC 2 - 1958", "It replaced the EDSAC 1 for the \nmuch better computer at the time, while the \nEDSAC was getting discontinued, the EDSAC 2 was being built \nThis computer lasted until 1965", true);
  histEvent(370, 200, "Ferranti Mark 1 - 1951", "This computer was the very \nfirst computer that was commmericalized built by Ferrranti \nand delivered to the University of Manchester. \nSeven of these systems were delivered between 1953 and 1957, \none of them went to Shell labs in Amsterdam", true);
  histEvent(110, 300, "Lorenz SZ - 1941", "This computer was used for high-level Army communications, \ncode-named Tunny by the British. \nThis computer was also used to intercept \ncommunications with other countries. \nIt was used for code-breaking", false);
  histEvent(300, 300, "EDSAC - 1949", "This was the first recognizably modern digital sotred-program \ncomputer. This was designed by Maurice Wikes \nit was one of the first usefully operational electronic digital \nstored-program computer", false);
  histEvent(600, 300, "CDC 6600 - 1964", "Released in 1964, it's generally considered \nthe first supercomputer. This \ncomputer outpreformed it's predecessor the IBM 7030 Stretch \nby about a factor of 3", false);
  histEvent(800, 300, "Apple Computers - 1976", "There werer two people who were names Steve Wozniak \n and Steve Jobs and they were the founders of Apple. Before \nSteve Jobs worked on the computers they looked like pizzaboxes \nand people called them pizzabox macs", false);
}

void histEvent(int x, int y, String title, String detail, boolean top) {
  if (top == true) {
    line(x, y, x+15, y+50);
  } else {
    line(x, y, x+15, y-50);
  }
  rectMode(CENTER);
  fill(66);
  rect(x, y, 120, 25, 6);
  fill(244);
  textSize(11);
  text(title, x, y+5);
  if (mouseX > x-75 && mouseX < x+75 && mouseY > y-15 && mouseY < y+15) {
    fill(0);
    textSize(12);
    text(detail, 160, 85);
  }
}
