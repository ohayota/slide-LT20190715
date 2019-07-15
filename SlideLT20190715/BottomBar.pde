class BottomBar {
  
  float barHeight;
  String title;
  CroppedImage image;
  
  BottomBar(float barHeight, String title) {
    this.barHeight = barHeight;
    this.title = title;
    image = new CroppedImage(dummy600, barHeight*2/3, width*7.5/8.4, height-barHeight/2, subColor1, false);
  }
  
  void drawBase() {
    noStroke();
    fill(subColor1);
    rect(0, height-barHeight, width, barHeight);
  }
  
  void drawTitle() {
    fill(subColor2);
    textFont(yuGothic30);
    textSize(height/35);
    textAlign(LEFT, CENTER);
    text(title, width/33.6, height-barHeight/2);
  }
  
  void drawUserInfo() {
    textSize(height/42);
    text("ユーザ名", image.x + image.size/2 + width/168, image.y - barHeight/8);
    textFont(yuGothic15);
    textSize(height/70);
    text("ユーザID など", image.x + image.size/2 + width/168, image.y + barHeight/6);
    image.draw();
  }
  
  void draw() {
    drawBase();
    drawTitle();
    drawUserInfo();
  }
  
}
