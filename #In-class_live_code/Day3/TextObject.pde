class TextObject{
  PVector location;
  float hue;
  String letter;
  
  TextObject(PVector loc, float h){
    location = loc;
    hue = h;
    letter = "a";
  }
  
  void show(){
    fill(hue,70,100);
    text(letter,location.x,location.y);
  }
  
  void changeLetter(String b){
    letter = b;
  }
  
  void assignColor(float newHue){
    hue = newHue;
  }


}
