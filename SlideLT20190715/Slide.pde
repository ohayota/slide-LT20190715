class Slide {
  
  TopBar topBar;
  BottomBar bottomBar;
  TextField textField;
  int number;  // スライド番号
  boolean isCover;
  String title;
  String subTitle;
  
  Slide(boolean isCover, int number, String title, String subTitle) {
    topBar = new TopBar(height/8, title, subTitle, number);
    bottomBar = new BottomBar(height/12, slideName);
    textField = new TextField(topBar.barHeight, bottomBar.barHeight, 80, 60);
    this.number = number;
    this.isCover = isCover;
    this.title = title;
    this.subTitle = subTitle;
  }
  
  void draw() {
    background(backColor);
    if (isCover) {
      fill(navy);
      textFont(yuGothic90);
      textSize(90);
      textAlign(CENTER, TOP);
      text(title, width/2, height/2-160);
      fill(darkGray);
      textFont(yuGothic70);
      textSize(50);
      textAlign(CENTER, TOP);
      text(subTitle, width/2, height/2+160);
    } else {
      topBar.draw();
      bottomBar.draw();
      textField.draw();
    }
  }
  
}
