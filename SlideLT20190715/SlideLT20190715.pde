ArrayList<Slide> slides;
int slideNum;
PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic30;
PFont helvetica;
PImage ohayotaSq;

boolean isKeyTyped;
String slideName;

void setup() {
  fullScreen();
  noStroke();
  imageMode(CENTER);
  
  yuGothic90 = createFont("YuGo-Bold", 90, true);
  yuGothic70 = createFont("YuGo-Bold", 70, true);
  yuGothic30 = createFont("YuGo-Bold", 30, true);
  helvetica = createFont("Helvetica-Bold", 50, true);
  ohayotaSq = loadImage("ohayotaSquare.jpg");
  
  slides = new ArrayList<Slide>();
  slideNum = 0;
  isKeyTyped = false;
  slideName = "SlideName";
  
  slides.add(new Slide(true, 0, "Title", "SubTitle"));
  Slide slide1 = new Slide(false, 1, "Title", "SubTitle");
  slides.add(slide1);
}

void draw() {
  background(0);
  
  slides.get(slideNum).draw();
}
