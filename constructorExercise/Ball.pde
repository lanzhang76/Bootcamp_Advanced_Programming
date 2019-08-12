class Ball{
  //Here are the class global variables
  //can be used by all functions below
  float xpos;
  float ypos;
  float speedx,speedy;
  float diam;
  
  //first version of defalt constructor
  //if no user input is inserted, thes are the default value assigned to the object
  Ball(){
    xpos = 200;
    ypos = 200;
    speedx = 1;
    speedy = 1;
    diam = 50;
  }
  
  //second version of constructor where values are user inputs
  Ball(float a, float b, float c, float s){
    xpos = a;
    ypos = b;
    diam = c;
    speedx = s;
    speedy = s;
  }
  
  void display(){
    fill(255,100,100);
    circle(xpos,ypos,diam);
  }
  
  void update(){
    xpos += speedx;
    ypos += speedy;
  }
  
  void edge(){
    if(xpos > width-diam/2 || xpos < diam/2){
      speedx *= -1;
    }
    
    if(ypos > height-diam/2 || ypos < diam/2){
      speedy *= -1;
    }
  }

}
