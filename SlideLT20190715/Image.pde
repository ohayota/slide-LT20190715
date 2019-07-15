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
  
  void drawImage() {
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
  
  void drawFrame() {
    noFill();
    strokeWeight(size/100+2);
    stroke(mainColor);
    rect(x-size/2, y-size/2, size, size);
  }
  
  void draw() {
    drawImage();
    drawFrame();
  }
  
}
