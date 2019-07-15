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
  
  void drawBase() {
    noStroke();
    fill(mainColor);
    rect(0, 0, width, barHeight);
  }
  
  void drawTitle() {
    fill(backColor);
    textSize(70);
    textFont(yuGothic70);
    textAlign(LEFT, CENTER);
    text(title, 50, barHeight/2);
  }
  
  void drawSubTitle() {
    textSize(30);
    textFont(yuGothic30);
    textAlign(RIGHT, CENTER);
    text(subTitle, width-150, barHeight/2);
  }
  
  void drawNumber() {
    textSize(50);
    textFont(helvetica);
    textAlign(RIGHT, CENTER);
    text(number, width-50, barHeight/2);
  }
  
  void draw() {
    drawBase();
    drawTitle();
    drawSubTitle();
    drawNumber();
  }
  
}
