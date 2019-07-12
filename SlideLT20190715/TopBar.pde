class TopBar {
  
  float barHeight;
  String title;
  String subTitle;
  int number;
  
  TopBar(float barHeight, String title, String subTitle, int number) {
    this.barHeight = barHeight;
    this.title = title;
    this.subTitle = subTitle;
    this.number = number;
  }
  
  void draw() {
    fill(0, 0, 70);
    rect(0, 0, width, barHeight);
    fill(240);
    textSize(70);
    textFont(yuGothic70);
    textAlign(LEFT, CENTER);
    text(title, 50, barHeight/2);
    textSize(30);
    textFont(yuGothic30);
    textAlign(RIGHT, CENTER);
    text(subTitle, width-150, barHeight/2);
    textSize(50);
    textFont(helvetica);
    textAlign(RIGHT, CENTER);
    text(number, width-50, barHeight/2);
  }
  
}
