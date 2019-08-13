class Ball{
  int posx,posy;
  float speedx,speedy;
  int d;
  String displayLetter;
  color col;
  color ballColor = color(0,0,255);
  
  //default
  Ball(){
    posx = width/2;
    posy = height/2;
    d = 30;
    speedx = random(0.8,2);
    speedy = random(0.8,2);
    displayLetter = "";
    col = color(255);
  }
  
  Ball(int c, String l, color k){
    posx = int(random(width));
    posy = int(random(height));
    d = c;
    speedx = random(0.8,2);
    speedy = random(0.8,2);
    displayLetter = l;
    col = k;
  } 
  
  void display(){
    circle(posx,posy,d);
  }
  
  void displayText(){
    fill(255,90);
    circle(posx,posy,d+15);
    circle(posx,posy,d+6);
    fill(ballColor);
    circle(posx,posy,d);
    fill(col);
    text(displayLetter,posx,posy);   
  }
  
  void changeColor(){
    ballColor = color(random(230,255),random(230,255),random(180,255));
  }
  
  void update(){
   posx += speedx;
   posy += speedy;
  }
  
  void edge(){
    if(posx > width - d/2 || posx < d/2){
      speedx *= -1;
    }
    
    if(posy > height - d/2 || posy < d/2){
      speedy *= -1;
    }
  }
}
