class Slide {
  
  TopBar topBar;
  BottomBar bottomBar;
  TextField textField;
  int number;  // スライド番号
  boolean isCover;
  String title;
  String subTitle;
  
  Slide(boolean isCover, int number, String title, String subTitle) {
    this.topBar = new TopBar(height/8, title, subTitle, number);
    this.bottomBar = new BottomBar(height/12, slideName);
    this.textField = new TextField(topBar.barHeight, bottomBar.barHeight);
    this.number = number;
    this.isCover = isCover;
    this.title = title;
    this.subTitle = subTitle;
  }
  
  void draw() {
    background(240);
    if (isCover) {
      fill(0, 0, 70);
      textFont(yuGothic90);
      textSize(90);
      textAlign(CENTER, TOP);
      text(title, width/2, height/2-100);
      fill(100);
      textFont(yuGothic70);
      textSize(50);
      textAlign(CENTER, TOP);
      text(subTitle, width/2, height/2+100);
    } else {
      topBar.draw();
      bottomBar.draw();
      textField.draw();
    }
  }
  
}
