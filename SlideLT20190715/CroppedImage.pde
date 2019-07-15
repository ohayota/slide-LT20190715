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
  
  void drawBaseImage() {
    pushMatrix();
    if (isReflect) {
      translate(x, y);
      rotate(radians(180));
    } else {
      translate(x, y);
    }
    image(image, 0, 0, size, size);
    popMatrix();
  }
  
  // 正方形の中を円形に切り抜く
  void drawCroppedShape() {
    pushMatrix();
    translate(x, y);
    fill(back);
    noStroke();
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
    popMatrix();
  }
  
  void drawFrame() {
    // 切り抜いた画像の枠を描画
    noFill();
    strokeWeight(5);
    stroke(navy);
    ellipse(x, y, size, size);
  }
  
  // 正確には画像自体を切り抜くのではなく，切り抜いた図形を画像の上に描画する
  void draw() {
    drawBaseImage();
    drawCroppedShape();
    drawFrame();
  }
  
}
