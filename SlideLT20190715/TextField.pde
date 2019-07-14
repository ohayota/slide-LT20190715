class TextField {
  
  float topBarHeight;
  float bottomBarHeight;
  float fieldHeight;
  
  TextField(float topBarHeight, float bottomBarHeight) {
    this.topBarHeight = topBarHeight;
    this.bottomBarHeight = bottomBarHeight;
    fieldHeight = height - (topBarHeight+20) - (bottomBarHeight+20);
  }
  
  void draw() {
    fill(230);
    rect(50, topBarHeight+20, width-100, fieldHeight);
  }
  
}
