class Text {
  
  String text;
  int level;
  
  Text(String text, int level) {
    this.text = text;
    this.level = level;
  }
  
  // 第2レベルなら丸，第3レベルなら線をマーカーとしてテキストの左側に表示
  void drawMarker(float x, float y) {
    switch (level) {
      case 2:
        fill(mainColor);
        noStroke();
        ellipse(x-35, y+20, 25, 25);
        fill(subColor1);
        textFont(yuGothic50);
        textSize(40);
        break;
      case 3:
        stroke(mainColor);
        strokeCap(SQUARE);
        strokeWeight(4);
        line(x-50, y+15, x-20, y+15);
        break;
      default:
        return;
    }
  }
  
  void drawText(float x, float y) {
    switch (level) {
      case 1:
        fill(mainColor);
        textFont(yuGothic50);
        textSize(50);
        break;
      case 2:
        fill(subColor1);
        textFont(yuGothic50);
        textSize(40);
        break;
      case 3:
        fill(subColor1);
        textFont(yuGothic30);
        textSize(30);
        break;
      default:
        return;
    }
    textAlign(LEFT, TOP);
    text(text, x, y);
  }
  
  void draw(float x, float y) {
    drawMarker(x, y);
    drawText(x, y);
  }
  
}
