PFont whateverNameYouWant;

void setup(){
  size(800,300);
  //Here's a method for you to check what fonts you have in your system
  println(PFont.list());
  //The font file needs to be stored in data folder
  //createFont needs an input of the file name, and default size you want
  whateverNameYouWant = createFont("BEBAS.TTF",20);
  textAlign(LEFT,CENTER);//horizontal & Vertical
}

void draw(){
  background(255);
  fill(0);
  textSize(40);//This overrides the default size;
  text("Hello World.", 10,120); //(String,x-position,y-position);
}
