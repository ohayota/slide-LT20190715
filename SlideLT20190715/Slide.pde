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
    textField = new TextField(topBar.barHeight, bottomBar.barHeight, width/21, height/17.5);
    this.number = number;
    this.isCover = isCover;
    this.title = title;
    this.subTitle = subTitle;
  }
  
  void drawTitle() {
    fill(mainColor);
    textFont(yuGothic90);
    textSize(height/11.7);
    textAlign(CENTER, TOP);
    text(title, width/2, height*4.5/13);
  }
  
  void drawSubTitle() {
    fill(subColor1);
    textFont(yuGothic50);
    textSize(height/21);
    textAlign(CENTER, TOP);
    text(subTitle, width/2, height*8.5/13);
  }
  
  void draw() {
    background(backColor);
    if (isCover) {
      drawTitle();
      drawSubTitle();
    } else {
      topBar.draw();
      bottomBar.draw();
      textField.draw();
    }
  }
  
}
