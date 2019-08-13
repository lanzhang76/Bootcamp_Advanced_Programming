Ball baby1 = new Ball();
int r = 20;
Ball baby2 = new Ball(100,300,r);
float num;


void setup(){
  size(480,360); 
  num = baby1.giveMe();
}

void draw(){  
  background(255);
  fill(255,100,100);
  baby1.display();
  baby2.display();  
  baby2.display2(num);
  println(num);
  baby1.update();
  baby2.update();
}
