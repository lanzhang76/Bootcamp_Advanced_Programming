class textObject{
  PVector location;
  float hue;
  String letter;
  
  textObject(PVector loc, float h){
    location = loc;
    hue = h;
    letter = "a";
  }
  
  void show(){   
    fill(hue,70,100);
    textSize(20);
    text(letter,location.x, location.y);
  }
  
  void changeLetter(String b){
    letter = b;
  }
  
  void assignColor(float newColor){
    hue = newColor;
  }

}
