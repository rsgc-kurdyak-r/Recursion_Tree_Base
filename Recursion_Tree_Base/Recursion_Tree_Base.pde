// Robert Kurdyak, May 11th, 2015

void setup() {
  
size(500, 500);


translate(width/2, height);
scale(1, -1);
rotate(radians(90));

myLine(0, 0, 100, 0, 10);


}


void myLine(float x1, float y1, float x2, float y2, float exitValue) {

line(x1, y1, x2, y2);
translate(x2, y2);

if (x2 > exitValue) {
  
  rotate(radians(30));
  myLine(x1, y1, x2 * 0.9, y2, exitValue);
  translate(x2, y2);
  rotate(radians(-60));
}

}
