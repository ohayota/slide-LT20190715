class BottomBar {
  
  float barHeight;
  String title;
  CroppedImage image;
  
  BottomBar(float barHeight, String title) {
    this.barHeight = barHeight;
    this.title = title;
    image = new CroppedImage(ohayotaSq, barHeight*2/3, width-200, height-barHeight/2, darkGray);
  }
  
  void draw() {
    noStroke();
    fill(darkGray);
    rect(0, height-barHeight, width, barHeight);
    fill(lightGray);
    textFont(yuGothic30);
    textSize(30);
    textAlign(LEFT, CENTER);
    text(title, 50, height-barHeight/2);
    textSize(24);
    text("ohayota", image.x + image.size/2 + 20, image.y - barHeight/8);
    textSize(14);
    text("@ohayoooota", image.x + image.size/2 + 20, image.y + barHeight/6);
    image.draw();
  }
  
}
