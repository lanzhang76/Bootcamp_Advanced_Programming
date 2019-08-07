class Ball{
  //Here are the class global variables
  //can be used by all functions below
  float xpos;
  float ypos;
  float diam;
  
  //first version of defalt constructor
  //if no user input is inserted, thes are the default value assigned to the object
  Ball(){
    xpos = 200;
    ypos = 200;
    diam = 50;
  }
  
  //second version of constructor where values are user inputs
  Ball(float a, float b, float c){
    xpos = a;
    ypos = b;
    diam = c;
  }
  
  void draw(){
    println(xpos,ypos);
    fill(0);
    circle(xpos,ypos,diam);
  }

}
