
void setup(){
  size(500,500);
  noStroke();
  background(20,20,20);
}

int signal = 0;
int rectX = 20, rectY = 200;
int rectSide = 100;

int xpos=20, ypos=200;

void draw() {
  background(20,20,20);
  xpos += 1;
  rectX += 1;
  if(signal == 0) {
      fill(200,200,255);
      triangle(xpos, ypos, xpos + 20, ypos + 30, xpos, ypos + 60);
      ellipse(xpos + 60, ypos + 30, 100, 50);
      triangle(xpos + 100, ypos + 25, xpos + 150, ypos + 30, xpos + 100, ypos + 42);
      fill(0);
      ellipse(xpos + 80, ypos + 25, 10, 10);
  }
  else if(signal == 1) {
      fill(200,255,200);
      triangle(xpos, ypos, xpos + 20, ypos + 30, xpos, ypos + 60);
      ellipse(xpos + 60, ypos + 30, 100, 50);
      triangle(xpos + 100, ypos + 25, xpos + 150, ypos + 30, xpos + 100, ypos + 42);
      fill(0);
      ellipse(xpos + 80, ypos + 25, 10, 10);
  }
  else {
      fill(255,200,200);
      triangle(xpos, ypos, xpos + 20, ypos + 30, xpos, ypos + 60);
      ellipse(xpos + 60, ypos + 30, 100, 50);
      triangle(xpos + 100, ypos + 25, xpos + 150, ypos + 30, xpos + 100, ypos + 42);
      fill(0);
      ellipse(xpos + 80, ypos + 25, 10, 10);
  }
  noFill();
  rect(rectX, rectY, rectSide, rectSide);
}

void mousePressed(){
  println(mouseX + ", " + mouseY);
  if(mouseX >= rectX &&
     mouseX <= rectX + rectSide + 50 &&
     mouseY >= rectY &&
     mouseY <= rectY + rectSide - 30) {
    signal = (signal + 1) % 3;
  }
}
