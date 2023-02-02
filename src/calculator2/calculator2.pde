// Liam Scott | Nov 2022 | Calculator Project

Button[] toms = new Button[10];
Button[] jerrys = new Button[12];
String dVal = "0.0";
float l, r, result;
char op = ' ';
boolean left = true;

void setup() {
  size(350, 650);
  // Numbers
  toms[0] = new Button(50, 360, 70, 70, '7', color(130, 140, 170));
  toms[1] = new Button(130, 360, 70, 70, '8', color(130, 140, 170));
  toms[2] = new Button(210, 360, 70, 70, '9', color(130, 140, 170));
  toms[3] = new Button(50, 440, 70, 70, '4', color(130, 140, 170));
  toms[4] = new Button(130, 440, 70, 70, '5', color(130, 140, 170));
  toms[5] = new Button(210, 440, 70, 70, '6', color(130, 140, 170));
  toms[6] = new Button(210, 520, 70, 70, '3', color(130, 140, 170));
  toms[7] = new Button(130, 520, 70, 70, '2', color(130, 140, 170));
  toms[8] = new Button(50, 520, 70, 70, '1', color(130, 140, 170));
  toms[9] = new Button(90, 600, 150, 70, '0', color(130, 140, 170));
  // Special Operations
  jerrys[0] = new Button(50, 280, 70, 70, 'C', color(#191970)); // Clear Button | Done
  jerrys[1] = new Button(130, 280, 70, 70, '±', color(#191970)); // Positive or Negative Button | Done
  jerrys[2] = new Button(210, 280, 70, 70, '%', color(#191970)); // Percent Button | Done
  jerrys[3] = new Button(290, 200, 70, 70, '÷', color(#FFA500)); // Button for Division | Done
  jerrys[4] = new Button(290, 280, 70, 70, '*', color(#FFA500)); // Button for Multiplication | Done
  jerrys[5] = new Button(290, 360, 70, 70, '-', color(#FFA500)); // Button for Subtraction | Done
  jerrys[6] = new Button(290, 440, 70, 70, '+', color(#FFA500)); // Button for Addition | Done
  jerrys[7] = new Button(290, 560, 70, 150, '=', color(#FFA500)); // Button for Enter / Equal | Done
  jerrys[8] = new Button(210, 600, 70, 70, '.', color(130, 140, 170)); //Button for Decimal | Going to be done
  jerrys[9] = new Button(50, 200, 70, 70, '²', color(#191970)); // Button for Squaring | Done
  jerrys[10] = new Button(130, 200, 70, 70, '√', color(#191970)); // Button for Square Root | Done
  jerrys[11] = new Button(210, 200, 70, 70, '³', color(#191970)); // Button for Cubing | Done
}

void draw() {
  background(200);
  updateDisplay();
  textSize(28);
  for (int i = 0; i < jerrys.length; i++) {
    jerrys[i].display();
    jerrys[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i < toms.length; i++) {
    toms[i].display();
    toms[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mouseReleased() {
  for (int i = 0; i < toms.length; i++) {
    if (toms[i].on && dVal.length() < 21) {
      if (dVal.equals("0.0")) {
        dVal = str(toms[i].val);
      } else {
        dVal += str(toms[i].val);
      }
      if (left) {
        l = float(dVal);
      } else {
        r = float(dVal);
      }
    }
  }
  for (int i = 0; i < jerrys.length; i++) {
    if (jerrys[i].on && jerrys[i].val == 'C') {
      dVal = "0.0";
      l = 0.0;
      r = 0.0;
      result = 0.0;
      left = true;
      op = ' ';
    } else if (jerrys[i].on && jerrys[i].val == '+') {
      op = '+';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '-') {
      op = '-';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '=') {
      preformCalculation();
    } else if (jerrys[i].on && jerrys[i].val == '*') {
      op = '*';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '÷') {
      op = '÷';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '%') {
      op = '%';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '±') {
      if (left) {
        l = l*-1;
        dVal = str(l);
      } else {
        r = r*-1;
        dVal = str(r);
      }
    } else if (jerrys[i].on && jerrys[i].val == '.') {
      op = '.';
    } else if (jerrys[i].on && jerrys[i].val == '²') {
      if (left) {
        l = sq(l);
        dVal = str(l);
      } else {
        r = sq(r);
        dVal = str(r);
      }
    } else if (jerrys[i].on && jerrys[i].val == '√') {
      op = '√';
      left = false;
      dVal = "";
    } else if (jerrys[i].on && jerrys[i].val == '³') {
      op = '³';
      left = false;
      dVal = "";
    }
    println("L:" + l + " Op:" + op + " R:" + r + " Result:" + result + " Left:" + left);
  }
}

void updateDisplay() {
  rectMode(CENTER);
  rect(width/2, 80, width-20, 120, 30);
  fill(130, 140, 170);
  textAlign(RIGHT);
  if (dVal.length() < 10) {
    textSize(40);
  } else if (dVal.length() < 11) {
    textSize(39);
  } else if (dVal.length() < 12) {
    textSize(38);
  } else if (dVal.length() < 13) {
    textSize(37);
  } else if (dVal.length() < 14) {
    textSize(36);
  } else if (dVal.length() < 15) {
    textSize(35);
  } else if (dVal.length() < 16) {
    textSize(34);
  } else if (dVal.length() < 17) {
    textSize(33);
  } else if (dVal.length() < 18) {
    textSize(32);
  } else if (dVal.length() < 19) {
    textSize(31);
  } else if (dVal.length() < 20) {
    textSize(30);
  } else if (dVal.length() < 21) {
    textSize(29);
  } else if (dVal.length() < 22) {
    textSize(28);
  }
  text(dVal, width-30, 90);
}

void preformCalculation() {
  if (op == '+') {
    result = l + r;
  } else if (op == '-') {
    result = l - r;
  } else if (op == '*') {
    result = l * r;
  } else if (op == '÷') {
    result = l / r;
  } else if (op == '²') {
    result = l * l;
  } else if (op == '³') {
    result = l * l * l;
  } else if (op == '%') {
    result = l/100;
  } else if (op == '√') {
    result = sqrt(l);
  }
  dVal = str(result);
  l = result;
  left = true;
}
