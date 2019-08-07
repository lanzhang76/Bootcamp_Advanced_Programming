//declaring a instantitaion object from the Ball class
Ball ballA = new Ball();
Ball ballB = new Ball(100,100,100);

void setup(){
  size(480,360);
}

void draw(){
  background(255);
  ballA.draw(); // the ballA is drawn with the default values;
  ballB.draw(); // the ballB is drawn with declared user input values.
}
