class TextField {
  
  float topBarHeight;
  float bottomBarHeight;
  float x;
  float y;
  float fieldWidth;
  float fieldHeight;
  ArrayList<CroppedImage> images;
  
  TextField(float topBarHeight, float bottomBarHeight, float marginX, float marginY) {
    this.topBarHeight = topBarHeight;
    this.bottomBarHeight = bottomBarHeight;
    this.x = marginX;
    this.y = topBarHeight + marginY;
    fieldWidth = width - x*2;
    fieldHeight = height - (y+(bottomBarHeight+marginY));
    images = new ArrayList<CroppedImage>();
  }
  
  void draw() {
    pushMatrix();
    translate(x, y);
    stroke(darkGray);
    noFill();
    rect(0, 0, fieldWidth, fieldHeight);
    popMatrix();
  }
  
}
