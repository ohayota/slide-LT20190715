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
        ellipse(x-width/48, y+height/52.5, height/42, height/42);
        break;
      case 3:
        stroke(mainColor);
        strokeCap(SQUARE);
        strokeWeight(height/262.5);
        line(x-width/33.6, y+height/70, x-width/60, y+height/70);
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
        textSize(height/21);
        break;
      case 2:
        fill(subColor1);
        textFont(yuGothic50);
        textSize(height/26.25);
        break;
      case 3:
        fill(subColor1);
        textFont(yuGothic30);
        textSize(height/35);
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
