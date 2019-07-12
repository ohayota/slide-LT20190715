ArrayList<Slide> slides;
int slideNum;
PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic30;
PFont helvetica;

boolean isKeyTyped;
String slideName;

void setup() {
  fullScreen();
  noStroke();
  
  yuGothic90 = createFont("YuGo-Bold", 90, true);
  yuGothic70 = createFont("YuGo-Bold", 70, true);
  yuGothic30 = createFont("YuGo-Bold", 30, true);
  helvetica = createFont("Helvetica-Bold", 50, true);
  
  slides = new ArrayList<Slide>();
  slideNum = 0;
  isKeyTyped = false;
  slideName = "SlideName";
  
  slides.add(new Slide(true, 0, "Title", "SubTitle"));
  slides.add(new Slide(false, 1, "Title", "SubTitle"));
}

void draw() {
  background(0);
  
  slides.get(slideNum).draw();
}
