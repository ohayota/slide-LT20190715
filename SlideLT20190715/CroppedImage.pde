class CroppedImage {
  
  PImage image;
  float size;
  float x;
  float y;
  color back;
  boolean isReflect;
  
  CroppedImage(PImage image, float size, float x, float y, color back, boolean isReflect) {
    this.image = image;
    this.size = size;
    this.x = x;
    this.y = y;
    this.back = back;
    this.isReflect = isReflect;
  }
  
  void draw() {
    // 画像を表示
    pushMatrix();
    if (isReflect) {
      translate(x, y);
      rotate(radians(180));
    } else {
      translate(x, y);
    }
    //line(-width, 0, width, 0);
    //line(0, -height, 0, height);
    image(image, 0, 0, size, size);
    popMatrix();
    
    // 円状に図形を切り抜く
    fill(back);
    noStroke();
    
    pushMatrix();
    translate(x, y);
    beginShape();
    // 図形の外枠
    vertex(-(size/2+1), -(size/2+1));
    vertex(size/2+1, -(size/2+1));
    vertex(size/2+1, size/2+1);
    vertex(-(size/2+1), size/2+1);
    //　切り抜く図形の描画
    beginContour();
    for (int i = 360; 0 < i; i--) {
      vertex(size/2 * cos(radians(i)), size/2 * sin(radians(i)));
    }
    endContour();
    endShape(CLOSE);
    // 切り抜いた画像の枠を描画
    noFill();
    strokeWeight(5);
    stroke(navy);
    ellipse(0, 0, size, size);
    popMatrix();
  }
  
}
