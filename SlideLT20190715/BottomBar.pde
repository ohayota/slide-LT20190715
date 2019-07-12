class BottomBar {
  
  float barHeight;
  String title;
  
  BottomBar(float barHeight, String title) {
    this.barHeight = barHeight;
    this.title = title;
  }
  
  void draw() {
    fill(100);
    rect(0, height-barHeight, width, barHeight);
    fill(200);
    textFont(yuGothic30);
    textSize(30);
    textAlign(LEFT, CENTER);
    text(title, 50, height-barHeight/2);
  }
  
}
