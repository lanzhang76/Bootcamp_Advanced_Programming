//declaring a instantitaion object from the Ball class
//Ball ballA = new Ball(); 
//Ball[] balls = new Ball[10];
ArrayList<Ball> balls = new ArrayList<Ball>();
float ballSize = 1000;


void setup(){
  size(800,800);
  background(255);
  //initializing objects
  for(int i = 0; i < ballSize; i ++){
    float x = random(width);
    float y = random(height);
    balls.add(new Ball(new PVector(x,y)));
    //balls[i] = new Ball();
  }
}

void draw(){
  
  stroke(20);
  //using single object instantiation
  //ballA.update();
  //ballA.display(); // the ballA is drawn with the default values;
  //ballA.edge();
  
  //using ArrayList
  for(int i = 0; i < balls.size(); i ++){
      Ball b = balls.get(i);
      b.update();
      b.display();
      b.edge();
  }
  
  // using array
  //for(int i = 0; i < balls.length; i ++){
  //  balls[i].update();
  //  balls[i].display();       
  //  balls[i].edge();
  //}
  
  fill(255,30);
  noStroke();
  rect(0,0,width,height);
}
