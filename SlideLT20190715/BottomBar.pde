class BottomBar {
  
  float barHeight;
  String title;
  CroppedImage image;
  
  BottomBar(float barHeight, String title) {
    this.barHeight = barHeight;
    this.title = title;
    image = new CroppedImage(dummy600, barHeight*2/3, width-200, height-barHeight/2, subColor1, false);
  }
  
  void drawBase() {
    noStroke();
    fill(subColor1);
    rect(0, height-barHeight, width, barHeight);
  }
  
  void drawTitle() {
    fill(subColor2);
    textFont(yuGothic30);
    textSize(30);
    textAlign(LEFT, CENTER);
    text(title, 50, height-barHeight/2);
  }
  
  void drawUserInfo() {
    textSize(25);
    text("ユーザ名", image.x + image.size/2 + 20, image.y - barHeight/8);
    textFont(yuGothic15);
    textSize(15);
    text("ユーザID など", image.x + image.size/2 + 20, image.y + barHeight/6);
    image.draw();
  }
  
  void draw() {
    drawBase();
    drawTitle();
    drawUserInfo();
  }
  
}
