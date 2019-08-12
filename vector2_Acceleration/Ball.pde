class Ball{
  //Declare locations and speed as Vectors
  PVector location;
  PVector velocity;
  PVector acceleration;
  float diam;
  
  
  //first version of defalt constructor
  //if no user input is inserted, thes are the default value assigned to the object
  Ball(){
    location = new PVector(200,200);
    velocity = new PVector(1,1); 
    acceleration = new PVector(0.01,0.01);
    diam = 30;
  }
  
  
  //using user input to change the speed for location
  Ball(float a, float b, float c){
    location = new PVector(a,b);
    diam = c;
  }
  
  void display(){
    fill(0);
    circle(location.x,location.y,diam);
  }
  
  void update(){
    //What happens when we give it a random acceleration?
    //acceleration = (PVector.random2D()).mult(0.4);
    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);
    
  }
  void edge(){    
    
    if(location.x > (width-diam/2) || location.x < diam/2){
      velocity.x *= -1;
      acceleration.x *= -1;
    }
    
    if(location.y > (height-diam/2) || location.y < diam/2){
      velocity.y *= -1;
      acceleration.y *= -1;
    }
  }

}
