class TextField {
  
  float topBarHeight;
  float bottomBarHeight;
  float x;
  float y;
  float fieldWidth;
  float fieldHeight;
  ArrayList<CroppedImage> images;
  ArrayList<Image> imgs;
  ArrayList<Text> texts;
  
  TextField(float topBarHeight, float bottomBarHeight, float marginX, float marginY) {
    this.topBarHeight = topBarHeight;
    this.bottomBarHeight = bottomBarHeight;
    this.x = marginX;
    this.y = topBarHeight + marginY;
    fieldWidth = width - marginX*2;
    fieldHeight = height - (y+bottomBarHeight+marginY);
    images = new ArrayList<CroppedImage>();
    imgs = new ArrayList<Image>();
    texts = new ArrayList<Text>();
  }
  
  void drawImages() {
    for (CroppedImage img: images) img.draw();
    for (Image img: imgs) img.draw();
  }
  
  void drawTexts() {
    if (!texts.isEmpty()) {
      int textX = 0;
      int textY = 0;
      int beforeLevel = texts.get(0).level;
      for (int i = 0; i < texts.size(); i++) {
        Text t = texts.get(i);
        switch (t.level) {
          case 0:
            textX = 0;
            textY += 60;
            break;
          case 1:
            textX = 0;
            t.draw(textX, textY);
            textY += 70;
            break;
          case 2:
            if (beforeLevel != 2) textX += 60;
            t.draw(textX, textY);
            textY += 60;
            break;
          case 3:
            if (beforeLevel != 3) textX += 60;
            t.draw(textX, textY);
            textY += 50;
            break;
          default:
        }
        beforeLevel = t.level;
      }
    }
  }
  
  void draw() {
    pushMatrix();
    // TextField内での位置を設定しているため，TextFieldの左上を原点(0, 0)とする
    translate(x, y);
    drawTexts();
    drawImages();
    popMatrix();
  }
  
}
