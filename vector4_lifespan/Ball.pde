class Ball{
  //Declare locations and speed as Vectors
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  color c;
  int lifespan;
   
 //constructor
  Ball(PVector pos){
    location = pos;
    velocity = new PVector(0,0); 
    acceleration = new PVector(0.01,0.01);
    mass = random(5,40);
    c = color(random(200,255),random(200,255),random(200,255));
    lifespan = 255;
  }
   

  void update(){
    //we want the ball to move towards the mouse 
    //we will calculate the direction vector so we know how much we are moving from the object to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    PVector direction = PVector.sub(mouse,location);
   
    //take a vector of any length, keep its direction and turn it into a unity vector with a length of 1
    //we use normalize here so we can scale the acc as much as we want 
    (direction.normalize()).mult(0.5);
    acceleration = direction;
    
    //then we update
    velocity.add(acceleration);
    velocity.limit(10); //this limits the maxium velocity to 10
    location.add(velocity);
    //calculating lifespan. It descreses by every frame.
    lifespan -= 1;
  }
  
  void display(){
    //set lifespan to 255 in initiation stage so we can use it here for transparency/alpha
    stroke(0,lifespan);
    fill(c,lifespan);
    circle(location.x,location.y,mass);
  }
  
  void colorAdj(){
    PVector mouse = new PVector(mouseX,mouseY);
    float dif = PVector.dist(mouse,location);
    float r = map(dif,0,800,255,0);
    float g = map(dif, 0,800,100,20);
    float b = map(dif, 0,800,120,100);
    c = color(r,g,b);
   
  }
  
  void edge(){       
    if(location.x > (width-mass/2) || location.x < mass/2){
      velocity.x *= -1;
      acceleration.x *= -1;
    }
    
    if(location.y > (height-mass/2) || location.y < mass/2){
      velocity.y *= -1;
      acceleration.y *= -1;
    }
  }
  
  //create a boolean function that will check if this object has lifespan < 0 or not
  //it can also be visualized it though examine the transparency
  boolean isDead() {
    if (lifespan <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
