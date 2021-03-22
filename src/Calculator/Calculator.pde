Button[] numButtons = new Button[10];
Button[] opButtons = new Button[12];
String dVal;
String op;
boolean left;
float l;
float r;
float result;

void setup() {
  size(210, 310);
  dVal = "0";
  op = "";
  left = true;
  r = 0.0;
  l = 0.0;
  result = 0.0;
  opButtons[0] = new Button(10, 80, 40, 20, "?", false, #D4E1F5, #A9C4EB); 
  opButtons[1] = new Button(60, 80, 40, 20, "?", false, #D4E1F5, #A9C4EB); 
  opButtons[2] = new Button(110, 80, 40, 20, "?", false, #D4E1F5, #A9C4EB); 
  opButtons[3] = new Button(160, 80, 40, 20, "?", false, #D4E1F5, #A9C4EB); 
  opButtons[4] = new Button(10, 110, 40, 30, "Clear", false, #FF9012, #EB6D00);
  opButtons[5] = new Button(160, 110, 40, 30, "/", false, #FFCE9F, #FF9012);
  opButtons[6] = new Button(160, 150, 40, 30, "x", false, #FFCE9F, #FF9012);
  opButtons[7] = new Button(160, 190, 40, 30, "-", false, #FFCE9F, #FF9012); 
  opButtons[8] = new Button(160, 230, 40, 30, "+", false, #FFCE9F, #FF9012); 
  opButtons[9] = new Button(10, 270, 40, 30, ".", false, #FFCE9F, #FF9012); 
  opButtons[10] = new Button(110, 270, 40, 30, "+ / -", false, #FFCE9F, #FF9012); 
  opButtons[11] = new Button(160, 270, 40, 30, "=", false, #FF9012, #EB6D00); 
  numButtons[0] = new Button(10, 150, 40, 30, "7", true, #A9C4EB, #407CF5); 
  numButtons[1] = new Button(60, 150, 40, 30, "8", true, #A9C4EB, #407CF5); 
  numButtons[2] = new Button(110, 150, 40, 30, "9", true, #A9C4EB, #407CF5); 
  numButtons[3] = new Button(10, 190, 40, 30, "4", true, #A9C4EB, #407CF5); 
  numButtons[4] = new Button(60, 190, 40, 30, "5", true, #A9C4EB, #407CF5); 
  numButtons[5] = new Button(110, 190, 40, 30, "6", true, #A9C4EB, #407CF5); 
  numButtons[6] = new Button(10, 230, 40, 30, "1", true, #A9C4EB, #407CF5); 
  numButtons[7] = new Button(60, 230, 40, 30, "2", true, #A9C4EB, #407CF5); 
  numButtons[8] = new Button(110, 230, 40, 30, "3", true, #A9C4EB, #407CF5); 
  numButtons[9] = new Button(60, 270, 40, 30, "0", true, #A9C4EB, #407CF5);
}

void draw() {
  background(242, 248, 255);
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
  updateDisplay();
}

void updateDisplay() {
  rectMode(CORNER);
  fill(255);
  rect(10, 10, 190, 60, 8);

  fill(0);
  textAlign(RIGHT);
  // render scaling text
  if (dVal.length()<13) {
    textSize(32);
  } else if (dVal.length()<14) {
    textSize(28);
  } else if (dVal.length()<15) {
    textSize(26);
  } else if (dVal.length()<17) {
    textSize(24);
  } else if (dVal.length()<19) {
    textSize(22);
  } else if (dVal.length()<21) {
    textSize(20);
  } else if (dVal.length()<23) {
    textSize(18);
  } else if (dVal.length()<25) {
    textSize(16);
  } else {
    textSize(14);
  }
  text(dVal, width-40, 50);
}

//// calc reference
//fill(255);
//rectMode(CORNER);
//rect(10, 10, 190, 60, 8);

//textSize(12);
//textAlign(LEFT);
//fill(0);
//text(l + r + result, 15, 40);
//}

void mousePressed() {
  println("L:" + l + " R:" + r + " Op:" + op);
  println("Result:" + result + " Left:" + left);

  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      if (left) {
        if (dVal.equals("0")) {
          dVal = (numButtons[i].val);
          l = float(dVal);
        } else {
          dVal += (numButtons[i].val);
          l = float(dVal);
        }
      } else {
        if (dVal.equals("+") || dVal.equals("-") || dVal.equals("x") || dVal.equals("/")) {
          dVal = (numButtons[i].val);
          r = float(dVal);
        } else {
          dVal += (numButtons[i].val);
          r = float(dVal);
        }
      }
    }
  }

  // interaction with operators
  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover && opButtons[i].val.equals("Clear")) {
      // clear variables
      dVal = "0";
      result = 0.0;
      left =true;
      r = 0.0;
      l = 0.0;
      op = "";
    } else if (opButtons[i].hover && opButtons[i].val.equals("+")) {
      if (!left) {
        performCalc();
      } else {
        op = "+";
        left = false;
        dVal = "+";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("-")) {
      if (!left) {
        performCalc();
      } else {
        op = "-";
        left = false;
        dVal = "-";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("x")) {
      if (!left) {
        performCalc();
      } else {
        op = "x";
        left = false;
        dVal = "x";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("/")) {
      if (!left) {
        performCalc();
      } else {
        op = "/";
        left = false;
        dVal = "/";
      }
    } else if (opButtons[i].hover && opButtons[i].val.equals("=")) {
      performCalc();
    }
  }
}

void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  } 
  l = result;
  dVal = str(result);
  left = true;
}
