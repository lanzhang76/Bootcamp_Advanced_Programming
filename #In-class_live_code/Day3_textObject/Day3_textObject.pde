PFont gothic;
ArrayList<textObject> letterObjects = new ArrayList();
int range1 = 150;
int range2 = 240;
int range3 = 400;

void setup(){
  size(800,800);
  colorMode(HSB,360,100,100);
  gothic = createFont("franklin-gothic-bold.ttf",20);
  for (int i = 40; i< width; i += width/20){
    for(int p = 40; p < height; p += height/20){     
      PVector pos = new PVector(i,p);
      letterObjects.add(new textObject(pos,255));
    }  
  }
 }

void draw(){
  background(360,0,0);
  textFont(gothic);
  PVector posMouse = new PVector(mouseX,mouseY);
  for (textObject baby : letterObjects) {
    //return a float that's the value/distance between mousePos and object location
    float dist = posMouse.dist(baby.location);
    float hueC = map(dist,0,800,0,360); // hue is determined/mapped by the distance 
    baby.assignColor(hueC);
    baby.show();  
    if(dist<=150){
     baby.changeLetter("S");
   } else if(dist > range1 && dist <=range2){
     baby.changeLetter("E");
   } else if (dist > range2 && dist <= range3){
     baby.changeLetter("A");
   } else {
     baby.changeLetter("N");
   }
  }

}
