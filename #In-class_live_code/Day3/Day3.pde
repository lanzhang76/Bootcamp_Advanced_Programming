PFont gothic;
ArrayList<TextObject> letterObjects = new ArrayList();
int range1 = 150;
int range2 = 250;
int range3 = 400;

void setup(){
  size(800,800);
  colorMode(HSB,360,100,100);
  gothic = createFont("franklin-gothic-bold.ttf",20);
  textFont(gothic);
  
  for (int i = 40; i < width; i += width/20){
    for(int p = 40; p < height; p += height/20){
      PVector pos = new PVector(i,p);
      letterObjects.add(new TextObject(pos,255));
    }
  }
  noCursor();
}

void draw(){
  background(0);
  PVector posMouse = new PVector(mouseX,mouseY);
  for (TextObject baby : letterObjects){
    float dist = posMouse.dist(baby.location);
    float hueColor = map(dist,0,1000,0,360);
    baby.assignColor(hueColor);
    baby.show();
    if(dist <= range1) {
      baby.changeLetter("C");
    } else if ( dist > range1 && dist <= range2){
      baby.changeLetter("O");
    } else if (dist > range2 && dist <= range3){
      baby.changeLetter("D");
    } else {
      baby.changeLetter("E");
    }
  }

}
