PFont myFont;
color textColor = color(random(255),random(255),random(255));
Ball a = new Ball();
Ball[] balls = new Ball[100];
String[] letters = {"H","E","L","O"};
int textX,textY;

void setup(){
  background(255);
  size(800,800); 
  //if you need to check what fonts you have in your sysetm
  //println(PFont.list());
  myFont = createFont("BEBAS.TTF",20);
  textFont(myFont);
  textX = 20;
  textY = height*6/7;
  //loading the objects in
  for(int i = 0; i<balls.length; i++){
    int num = int(random(4));
    String letter = letters[num]; 
    color randColor = color(random(100,255));
    balls[i] = new Ball(50, letter, randColor);
  }
}

void draw(){  
  
  noStroke();
  textSize(20);
  textAlign(CENTER,CENTER);//Horizontal, Vertical
  for(int i = 0; i<balls.length; i++){
    balls[i].displayText();
    balls[i].update();
    balls[i].edge();
  }
  
  
  //front text
  textSize(200);
  textAlign(LEFT); 
  float yOffset = map(mouseY,0,height,0,20);
  //adds a layer of black
  fill(255,30);
  rect(0+yOffset,0+yOffset,width,height);
  fill(255,165,0);
  text("HI.BALLS.",textX+yOffset,textY+yOffset);
  float r = map(mouseX,0,width,180,250);
  fill(r,200,230);
  text("HI.BALLS.",textX,textY); 
}

void mousePressed(){
  int start = int(random(4));
  for(int i = start; i<balls.length; i+=2){
    balls[i].changeColor();
    balls[i].posx = int(random(width));//we can access the global variabls in the class as well 
  }
  textX = mouseX;
  textY = mouseY;
}
