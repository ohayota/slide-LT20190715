void keyPressed() {
  if (!isKeyTyped) {
    switch (keyCode) {
      case LEFT:
        if (0 < slideNum) slideNum--; //<>//
        break;
      case RIGHT:
        if (slideNum < slides.size()-1) slideNum++; //<>//
        break;
      default:
    }
    isKeyTyped = true;
  }
}

void keyReleased() {
  isKeyTyped = false;
}
