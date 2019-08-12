//declaring a instantitaion object from the Ball class
Ball ballA = new Ball();
Ball ballB = new Ball(100,100,100,1);

void setup(){
  size(480,360);
}

void draw(){
  background(255);
  ballA.display(); // the ballA is drawn with the default values;
  ballB.display(); // the ballB is drawn with declared user input values.
  ballA.update();
  ballA.edge();
}
