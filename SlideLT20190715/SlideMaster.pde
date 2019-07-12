class SlideMaster {
  
  TopBar topBar;
  BottomBar bottomBar;
  boolean isCover;
  String title;
  String subTitle;
  
  SlideMaster(boolean isCover, int number, String title, String subTitle) {
    this.topBar = new TopBar(height/8, title, subTitle, number);
    this.bottomBar = new BottomBar(height/12, slideName);
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
    }
  }
  
}
