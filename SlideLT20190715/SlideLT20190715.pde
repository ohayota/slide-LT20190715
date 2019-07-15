// 使うフォント
PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic50;
PFont yuGothic30;
PFont yuGothic15;
PFont helvetica;
// 使う画像
PImage dummy600;

// createSlides()でスライド全部を入れる
ArrayList<Slide> slides = new ArrayList<Slide>();
String slideName = "スライド名";
int slideNum = 0;  // 表示対象のスライド番号

boolean isKeyTyped = false;

final color backColor = color(240);
final color mainColor = color(0, 0, 70);
final color subColor1 = color(100);
final color subColor2 = color(200);

void setup() {
  fullScreen();
  noStroke();
  noCursor();
  imageMode(CENTER);
  frameRate(15);
  
  yuGothic90 = createFont("YuGo-Bold", 90, true);
  yuGothic70 = createFont("YuGo-Bold", 70, true);
  yuGothic50 = createFont("YuGo-Bold", 50, true);
  yuGothic30 = createFont("YuGo-Bold", 30, true);
  yuGothic15 = createFont("YuGo-Bold", 15, true);
  helvetica = createFont("Helvetica-Bold", 50, true);
  
  dummy600 = loadImage("dummy600.png");
  
  createSlides();
}

void createSlides() {
  // 表紙
  slides.add(new Slide(true, 0, "タイトル", "サブタイトル"));
  // スライド1枚目
  Slide s1 = new Slide(false, 1, "タイトル", "サブタイトル");
  s1.textField.texts.add(new Text("第1レベル", 1));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("", 0));  // 空白行
  s1.textField.texts.add(new Text("第1レベル", 1));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.cImages.add(new CroppedImage(dummy600, s1.textField.fieldWidth/3,
                                           s1.textField.x + s1.textField.fieldWidth*7/10,
                                           s1.textField.fieldHeight/2, backColor, false));
  slides.add(s1);
  // スライド2枚目
  Slide s2 = new Slide(false, 2, "タイトル", "サブタイトル");
  s2.textField.texts.add(new Text("第1レベル", 1));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("", 0));  // 空白行
  s2.textField.texts.add(new Text("第1レベル", 1));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.images.add(new Image(dummy600, s2.textField.fieldWidth/3,
                                    s2.textField.x + s2.textField.fieldWidth*7/10,
                                    s2.textField.fieldHeight/2, backColor, false));
  slides.add(s2);
  // スライド3枚目...
}

void draw() {
  background(backColor);
  
  slides.get(slideNum).draw();
  
  noLoop();
}
