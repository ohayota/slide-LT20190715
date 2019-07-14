PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic50;
PFont yuGothic30;
PFont yuGothic15;
PFont helvetica;
PImage ohayotaSq;

ArrayList<Slide> slides = new ArrayList<Slide>();
int slideNum = 0;
boolean isKeyTyped = false;
String slideName = "SlideName";

final color backColor = color(240);
final color navy = color(0, 0, 70);
final color darkGray = color(100);
final color lightGray = color(200);

void setup() {
  fullScreen();
  noStroke();
  imageMode(CENTER);
  
  yuGothic90 = createFont("YuGo-Bold", 90, true);
  yuGothic70 = createFont("YuGo-Bold", 70, true);
  yuGothic50 = createFont("YuGo-Bold", 50, true);
  yuGothic30 = createFont("YuGo-Bold", 30, true);
  yuGothic15 = createFont("YuGo-Bold", 15, true);
  helvetica = createFont("Helvetica-Bold", 50, true);
  ohayotaSq = loadImage("ohayotaSquare.jpg");
  
  slides.add(new Slide(true, 0, "Title", "SubTitle"));
  Slide slide1 = new Slide(false, 1, "Title", "SubTitle");
  slide1.textField.texts.add(new Text("第１レベル", 1));
  slide1.textField.texts.add(new Text("", 0));
  slide1.textField.texts.add(new Text("第１レベル", 1));
  slide1.textField.texts.add(new Text("第２レベル", 2));
  slide1.textField.texts.add(new Text("第２レベル", 2));
  slide1.textField.texts.add(new Text("第３レベル", 3));
  slide1.textField.texts.add(new Text("第３レベル", 3));
  slide1.textField.texts.add(new Text("", 0));
  slide1.textField.texts.add(new Text("第１レベル", 1));
  slide1.textField.texts.add(new Text("第２レベル", 2));
  slide1.textField.texts.add(new Text("第３レベル", 3));
  slide1.textField.texts.add(new Text("第３レベル", 3));
  slides.add(slide1);
}

void draw() {
  background(backColor);
  
  slides.get(slideNum).draw();
  
  noLoop();
}
