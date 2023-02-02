// Liam Scott | Sept 20 2022 | Grades
float val;

void setup() {
  size(1000, 200);
  val = 0.0;
}

void draw() {
  background(127, 189, 145);
  val = mouseX/250.0;
  noCursor();
  line(0, 100, width, 100);
  ellipse(mouseX, 100, 5, 5);
  textAlign(CENTER);
  fill(0);
  //text(mouseX, mouseX, 90);
  text(val, mouseX, 115);
  text("Letter Grade: " + calcGrade(val), width/2, 150);
  text("Grades by Liam Scott", width/2, 50);
  textSize(15);
}

String calcGrade(float grade) {
  String letterGrade = "";
  if (grade > 3.50) {
    letterGrade = "A";
  } else if (grade >= 3.00) {
    letterGrade = "A-";
  } else if (grade >= 2.84) {
    letterGrade = "B+";
  } else if (grade >= 2.67) {
    letterGrade = "B";
  } else if (grade >= 2.50) {
    letterGrade = "B-";
  } else if (grade >= 2.34) {
    letterGrade = "C+";
  } else if (grade >= 2.17) {
    letterGrade = "C";
  } else if (grade >= 2.00) {
    letterGrade = "C-";
  } else if (grade >= 1.66) {
    letterGrade = "D+";
  } else if (grade >= 1.33) {
    letterGrade = "D";
  } else if (grade >= 1.00) {
    letterGrade = "D-";
  } else {
    letterGrade = "F";
  }
  return letterGrade;
}
