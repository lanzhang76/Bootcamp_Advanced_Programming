class Ball{
  int posx,posy;
  int speedx,speedy;
  int d;
  
  //default
  Ball(){
    posx = 200;
    posy = 200;
    d = 50;
    speedx = 1;
    speedy = 1;
  }
  
  Ball(int a, int b, int c){
    posx = a;
    posy = b;
    d = c;
    speedx = 1;
    speedy = 1;
  } 
  
  void display(){
    circle(posx,posy,d);
  }
  
  void display2(float x){
    circle(posx,posy,x);
  }
  
  float giveMe(){
    float a = random(10,30);
    float b = a*10;
    return b;
  }
  
  void update(){
   posx += speedx;
   posy += speedy;
  }

}
