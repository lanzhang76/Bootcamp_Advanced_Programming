//declaring a instantitaion object from the Ball class
//Ball ballA = new Ball(); 
//Ball[] balls = new Ball[10];
ArrayList<Ball> balls = new ArrayList<Ball>();
float ballSize = 10;


void setup(){
  size(800,800);
  
  //initializing objects
  for(int i = 0; i < ballSize; i ++){
    float x = random(width);
    float y = random(height);
    balls.add(new Ball(new PVector(x,y)));
  }

  noCursor();
}

void draw(){
  background(0);
  
  //adding one to the arraylist every frame it runs
  balls.add(new Ball(new PVector(mouseX+random(-20,20),mouseY+random(-20,20))));
  
  //using ArrayList
  for(int i = 0; i < balls.size(); i ++){
      Ball b = balls.get(i);
      b.update();
      b.display();
      b.edge();
      b.colorAdj();
  } 
  
  for (int j = balls.size()-1; j>0; j -- ){
      Ball b = balls.get(j);  
      if(b.isDead()){
        balls.remove(j);    
      }
  }
   println(balls.size());

}


void mousePressed(){
  for(int i = 0; i < ballSize; i ++){
    float x = random(width);
    float y = random(height);
    balls.add(new Ball(new PVector(x,y)));
  }
}
