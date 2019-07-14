class CroppedImage {
  
  PImage image;
  float size;
  float x;
  float y;
  color back;
  
  CroppedImage(PImage image, float size, float x, float y, color back) {
    this.image = image;
    this.size = size;
    this.x = x;
    this.y = y;
    this.back = back;
  }
  
  void draw() {
    // 画像を表示
    pushMatrix();
    translate(x, y);
    rotate(radians(180));
    image(image, 0, 0, size, size);
    popMatrix();
    
    // 円状に図形を切り抜く
    fill(back);
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
