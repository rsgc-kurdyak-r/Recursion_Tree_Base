// Robert Kurdyak, May 11th, 2015

void setup() {

  colorMode(HSB, 360, 100, 100);
  size(500, 500);


  translate(width/2, height);
  scale(1, -1);
  rotate(radians(90));

  myLine(0, 0, 100, 0, 50);
}


void myLine(float x1, float y1, float x2, float y2, float exitValue) {
pushMatrix();
  stroke(0, 80, 90);
  // The trunk
  line(x1, y1, x2, y2);    //
  translate(x2, y2);      //
  

  rotate(radians(30));
  // Draw the left branch
  stroke(120, 80, 90);
  line(x1, y1, x2 * 0.9, y2);
  translate(x2 * 0.9, y2);
  // Recurse
  if (x2 > exitValue) {
    myLine(x1, y1, x2 * 0.7, y2, exitValue);
  }
  translate( - x2 * 0.9, - y2);
  
  //Draw the right branch
  
  rotate(radians(-60));
  stroke(240, 80, 90);
  line(x1, y1, x2 * 0.9, y2);
  translate(x2 * 0.9, y2);
  if (x2 > exitValue) {
    myLine(x1, y1, x2 * 0.7, y2, exitValue);
  }
  popMatrix();
}
