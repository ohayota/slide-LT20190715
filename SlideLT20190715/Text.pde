class Text {
  
  String text;
  int level;
  
  Text(String text, int level) {
    this.text = text;
    this.level = level;
  }
  
  void draw(float x, float y) {
    switch (level) {
      case 1:
        fill(navy);
        textFont(yuGothic50);
        textSize(50);
        break;
      case 2:
        fill(navy);
        noStroke();
        ellipse(x-35, y+20, 25, 25);
        fill(darkGray);
        textFont(yuGothic50);
        textSize(40);
        break;
      case 3:
        stroke(navy);
        strokeCap(SQUARE);
        strokeWeight(4);
        line(x-50, y+15, x-20, y+15);
        fill(darkGray);
        textFont(yuGothic30);
        textSize(30);
        break;
      default:
        return;
    }
    textAlign(LEFT, TOP);
    text(text, x, y);
  }
  
}
