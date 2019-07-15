class Image {
  
  PImage image;
  float size;
  float x;
  float y;
  color back;
  boolean isReflect;
  
  Image(PImage image, float size, float x, float y, color back, boolean isReflect) {
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
    noFill();
    strokeWeight(5);
    stroke(navy);
    rect(-size/2, -size/2, size, size);
    popMatrix();
  }
  
}
