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
  
  void draw() {
    pushMatrix();
    translate(x, y);
    stroke(darkGray);
    noFill();
    //rect(0, 0, fieldWidth, fieldHeight);
    
    if (!texts.isEmpty()) {
      int x = 0;
      int y = 0;
      int beforeLevel = texts.get(0).level;
      for (int i = 0; i < texts.size(); i++) {
        Text t = texts.get(i);
        switch (t.level) {
          case 0:
            x = 0;
            y += 60;
            break;
          case 1:
            x = 0;
            t.draw(x, y);
            y += 70;
            break;
          case 2:
            if (beforeLevel != 2) x += 60;
            t.draw(x, y);
            y += 60;
            break;
          case 3:
            if (beforeLevel != 3) x += 60;
            t.draw(x, y);
            y += 50;
            break;
          default:
        }
        beforeLevel = t.level;
      }
      for (CroppedImage img: images) img.draw();
      for (Image img: imgs) img.draw();
    }
    popMatrix();
  }
  
}
