class Ball{
  //PVector for location(x,y) and velocity(speedX,speedY);
  PVector location;
  PVector velocity;
  float diam; 
  
  //first version of defalt constructor
  //if no user input is inserted, thes are the default value assigned to the object
  Ball(){
    location = new PVector(200,200);
    velocity = new PVector(1,1);
    diam = 30;  
  }
  
  
  //second version of constructor where values are user inputs
  Ball(float a, float b, float c){
    location = new PVector(a,b);
    diam = c;
  }
  
  void display(){
    fill(0);
    //circle function expects two floats for x and y position
    //PVector is not the same datatype, in this case you break them down.
    circle(location.x,location.y,diam);
  }
  
  void update(){
    location.add(velocity);//this changes location's value
    //the output is a function not another PVector
  }
  
  void edge(){
    if(location.x > (width-diam/2) || location.y < diam/2){
      velocity.x *= -1;
    }
    
    if(location.y > (height-diam/2) || location.y < diam/2){
      velocity.y *= -1;
    }
  }

}
