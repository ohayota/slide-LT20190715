ArrayList<Slide> slides;
int slideNum;

void setup() {
  fullScreen();
  
  slides = new ArrayList<>();
  slideNum = 0;
  slides.add(new Slide());
}

void draw() {
  slides.get(slideNum).draw();
}
