class Slide extends SlideMaster {
  
  int number;  // スライド番号
  
  Slide(boolean isCover, int number, String title, String subTitle) {
    super(isCover, number, title, subTitle);
    this.number = number;
  }
  
  void draw() {
    super.draw();
  }
  
}
