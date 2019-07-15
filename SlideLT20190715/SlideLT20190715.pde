PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic50;
PFont yuGothic30;
PFont yuGothic15;
PFont helvetica;
PImage ohayotaSq;
PImage colorCloud;
PImage lights;
PImage zeroToOne;
PImage processingLogo;
PImage divRect;
PImage divRectColor;
PImage rectDivRect;
PImage recurDivSq1;
PImage recurDivSq2;
PImage recurDivSq3;

ArrayList<Slide> slides = new ArrayList<Slide>();
int slideNum = 0;
boolean isKeyTyped = false;
String slideName = "\"ロジカルにカオスと戯れよう\" ジェネラティブアート入門";

final color backColor = color(240);
final color navy = color(0, 0, 70);
final color darkGray = color(100);
final color lightGray = color(200);

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
  ohayotaSq = loadImage("ohayotaSquare.jpg");
  colorCloud = loadImage("colorCloud.jpg");
  lights = loadImage("lights.jpg");
  zeroToOne = loadImage("zeroToOne.jpg");
  processingLogo = loadImage("processingLogo.jpg");
  divRect = loadImage("divRect.jpg");
  divRectColor = loadImage("divRectColor.jpg");
  rectDivRect = loadImage("rectDivRect.jpg");
  recurDivSq1 = loadImage("recurDivSq1.jpg");
  recurDivSq2 = loadImage("recurDivSq2.jpg");
  recurDivSq3 = loadImage("recurDivSq3.jpg");
  
  slides.add(new Slide(true, 0, "\"ロジカルにカオスと戯れよう\"\nジェネラティブアート入門", "ohayota(@ohayoooota)"));
  
  Slide slide1 = new Slide(false, 1, "自己紹介", "");
  slide1.textField.texts.add(new Text("所属", 1));
  slide1.textField.texts.add(new Text("高度ICTコース4年", 2));
  slide1.textField.texts.add(new Text("大場研究室", 2));
  slide1.textField.texts.add(new Text("", 0));
  slide1.textField.texts.add(new Text("出没するハッシュタグ", 1));
  slide1.textField.texts.add(new Text("#generativeart", 2));
  slide1.textField.texts.add(new Text("#creativecoding", 2));
  slide1.textField.texts.add(new Text("", 0));
  slide1.textField.texts.add(new Text("興味", 1));
  slide1.textField.texts.add(new Text("Processing, Swift", 2));
  slide1.textField.texts.add(new Text("ダーツ, ギター, 将棋など", 2));
  slide1.textField.images.add(new CroppedImage(ohayotaSq, slide1.textField.fieldWidth/3,
                                               slide1.textField.x + slide1.textField.fieldWidth*7/10,
                                               slide1.textField.fieldHeight/2, backColor, true));
  slides.add(slide1);
  
  Slide slide2 = new Slide(true, 2, "さて，本題です", "");
  slides.add(slide2);
  
  Slide slide3 = new Slide(true, 3, "ジェネラティブアート\nって知ってますか？", "");
  slides.add(slide3);
  
  Slide slide4 = new Slide(false, 4, "基礎知識", "");
  slide4.textField.texts.add(new Text("ジェネラティブアートとは", 1));
  slide4.textField.texts.add(new Text("プログラムを使って描かれたアート", 2));
  slide4.textField.texts.add(new Text("アルゴリズム的に生成される芸術作品", 2));
  slide4.textField.texts.add(new Text("自律性と予想不可能性が特徴", 2));
  slides.add(slide4);
  
  Slide slide5 = new Slide(false, 5, "基礎知識", "");
  slide5.textField.texts.add(new Text("ジェネラティブアートの特徴", 1));
  slide5.textField.texts.add(new Text("数学との密接な結びつき", 2));
  slide5.textField.texts.add(new Text("スケッチ感覚で描くことができる", 2));
  slide5.textField.texts.add(new Text("動かしてみるまで何が起きるか分からない", 2));
  slides.add(slide5);
  
  Slide slide6 = new Slide(false, 6, "基礎知識", "");
  slide6.textField.texts.add(new Text("ジェネラティブアートにおける「数学」", 1));
  slide6.textField.texts.add(new Text("美しさと言われる「自己相似性」", 2));
  slide6.textField.texts.add(new Text("黄金数という数の持つ「再帰性」", 2));
  slide6.textField.texts.add(new Text("群や格子のような構造による「対称性」・「周期性」", 2));
  slides.add(slide6);
  
  Slide slide7 = new Slide(false, 7, "描くための環境", "");
  slide7.textField.texts.add(new Text("Processing (https://processing.org/)", 1));
  slide7.textField.texts.add(new Text("書いたコードを，すぐに図形や色などのビジュアルに反映できる", 2));
  slide7.textField.texts.add(new Text("簡単な文で図形を描くことができる", 2));
  slide7.textField.texts.add(new Text("未来大では1年前期の授業で扱う", 2));
  slide7.textField.imgs.add(new Image(processingLogo, slide7.textField.fieldHeight/2,
                                      slide7.textField.fieldWidth/2,
                                      slide7.textField.fieldHeight*3/4, backColor, false));
  slides.add(slide7);
  
  Slide slide8 = new Slide(false, 8, "作品例", "");
  slide8.textField.texts.add(new Text("数学を使う例の紹介", 1));
  slide8.textField.texts.add(new Text("ユークリッド互除法", 2));
  slides.add(slide8);
  
  Slide slide9 = new Slide(false, 9, "ユークリッド互除法", "");
  slide9.textField.texts.add(new Text("最大公約数を求める", 1));
  slide9.textField.texts.add(new Text("10と6の最大公約数", 2));
  slide9.textField.texts.add(new Text("10 / 6 = 1 ... 4", 3));
  slide9.textField.texts.add(new Text("6 / 4 = 1 ... 2", 3));
  slide9.textField.texts.add(new Text("4 / 2 = 2 ... 0", 3));
  slide9.textField.texts.add(new Text("GCD is 2", 3));
  slides.add(slide9);
  
  Slide slide10 = new Slide(false, 10, "ユークリッド互除法", "");
  slide10.textField.texts.add(new Text("アルゴリズムを使って描いてみる", 1));
  slide10.textField.texts.add(new Text("四角形を分割して描くプログラム", 2));
  slide10.textField.imgs.add(new Image(divRect, slide10.textField.fieldHeight*2/3,
                                       slide10.textField.fieldWidth/2,
                                       slide10.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide10);
  
  Slide slide11 = new Slide(false, 11, "ユークリッド互除法", "");
  slide11.textField.texts.add(new Text("色を追加してみる", 1));
  slide11.textField.texts.add(new Text("カラフルに表示するプログラム", 2));
  slide11.textField.imgs.add(new Image(divRectColor, slide11.textField.fieldHeight*2/3,
                                       slide11.textField.fieldWidth/2,
                                       slide11.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide11);
  
  Slide slide12 = new Slide(false, 12, "ユークリッド互除法", "");
  slide12.textField.texts.add(new Text("少し複雑にしてみる", 1));
  slide12.textField.texts.add(new Text("分割を増やして，カラフルに表示するプログラム", 2));
  slide12.textField.imgs.add(new Image(rectDivRect, slide12.textField.fieldHeight*2/3,
                                       slide12.textField.fieldWidth/2,
                                       slide12.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide12);
  
  Slide slide13 = new Slide(false, 13, "ユークリッド互除法", "");
  slide13.textField.texts.add(new Text("ランダムな値にしてみる", 1));
  slide13.textField.texts.add(new Text("ランダムな値に対してユークリッド互除法を適用", 2));
  slide13.textField.texts.add(new Text("再帰を使って分割していくプログラム", 2));
  slide13.textField.imgs.add(new Image(recurDivSq1, slide13.textField.fieldHeight*2/3,
                                       slide13.textField.fieldWidth/2-slide1.textField.fieldHeight*2/3-20,
                                       slide13.textField.fieldHeight*2/3, backColor, false));
  slide13.textField.imgs.add(new Image(recurDivSq2, slide13.textField.fieldHeight*2/3,
                                       slide13.textField.fieldWidth/2,
                                       slide13.textField.fieldHeight*2/3, backColor, false));
  slide13.textField.imgs.add(new Image(recurDivSq3, slide13.textField.fieldHeight*2/3,
                                       slide13.textField.fieldWidth/2+slide1.textField.fieldHeight*2/3+20,
                                       slide13.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide13);
  
  Slide slide14 = new Slide(false, 14, "ランダム値を使った作品例", "");
  slide14.textField.texts.add(new Text("自分でも作ってみた", 1));
  slide14.textField.texts.add(new Text("ランダムな距離・大きさの円を塗り重ねる", 2));
  slide14.textField.texts.add(new Text("0と1で線を描く", 2));
  slides.add(slide14);
  
  Slide slide15 = new Slide(false, 15, "ランダムな距離・大きさの円を塗り重ねる", "");
  slide15.textField.texts.add(new Text("半透明な円の集合", 1));
  slide15.textField.texts.add(new Text("1-100のランダムな値で，中心からの距離を決定", 2));
  slide15.textField.texts.add(new Text("シアンとマゼンタの半透明な円を表示", 2));
  slide15.textField.imgs.add(new Image(colorCloud, slide15.textField.fieldHeight*2/3,
                                       slide15.textField.fieldWidth/2,
                                       slide15.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide15);
  
  Slide slide16 = new Slide(false, 16, "0と1で線を描く", "");
  slide16.textField.texts.add(new Text("4色の線だけで，太さを変えて描画", 1));
  slide16.textField.texts.add(new Text("0-1のランダムな値で，描画する高さを決定", 2));
  slide16.textField.texts.add(new Text("0-3のランダムな値で，描画する色を決定", 2));
  slide16.textField.imgs.add(new Image(zeroToOne, slide16.textField.fieldHeight*2/3,
                                       slide16.textField.fieldWidth/2,
                                       slide16.textField.fieldHeight*2/3, backColor, false));
  slides.add(slide16);
  
  Slide slide17 = new Slide(false, 17, "ジェネラティブアートの楽しさ", "");
  slide17.textField.texts.add(new Text("何が面白いのか？", 1));
  slide17.textField.texts.add(new Text("自分が知っているアルゴリズムを使って描ける", 2));
  slide17.textField.texts.add(new Text("簡単なプログラムで，自分のしたい表現ができる", 2));
  slide17.textField.texts.add(new Text("ランダム数などの予測できない値を加えると，毎回違う結果がみられる", 2));
  slides.add(slide17);
  
  Slide slide18 = new Slide(false, 18, "ジェネラティブアートの楽しさ", "");
  slide18.textField.texts.add(new Text("ジェネラティブアートを楽しむ人たちの作品が見られる", 1));
  slide18.textField.texts.add(new Text("#generativeart", 2));
  slide18.textField.texts.add(new Text("#creativecoding", 2));
  slide18.textField.texts.add(new Text("#processing", 2));
  slides.add(slide18);
  
  Slide slide19 = new Slide(true, 19, "ジェネラティブアート\nはじめてみませんか？", "");
  slides.add(slide19);
  
  Slide slide20 = new Slide(true, 20, "おまけ", "");
  slides.add(slide20);
  
  Slide slide21 = new Slide(true, 21, "このスライド\nProcessingで書いてます", "Processingの実行環境を整えよう！");
  slides.add(slide21);
}

void draw() {
  background(backColor);
  
  slides.get(slideNum).draw();
  
  noLoop();
}
