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
    textSize(height/70);
    textFont(yuGothic70);
    textAlign(LEFT, CENTER);
    text(title, width/33.6, barHeight/2);
  }
  
  void drawSubTitle() {
    textSize(height/35);
    textFont(yuGothic30);
    textAlign(RIGHT, CENTER);
    text(subTitle, width*10.2/11.2, barHeight/2);
  }
  
  void drawNumber() {
    textSize(height/21);
    textFont(helvetica);
    textAlign(RIGHT, CENTER);
    text(number, width*32.6/33.6, barHeight/2);
  }
  
  void draw() {
    drawBase();
    drawTitle();
    drawSubTitle();
    drawNumber();
  }
  
}
