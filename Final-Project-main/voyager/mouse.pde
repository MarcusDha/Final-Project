void mousePressed() {
  if (mode == game) {
    gameClick();
  } else if (mode == guide) {
    guideClick();
  } else if (mode == options) {
    optionClick();
  } else if (mode == parts) {
    partsClick();
  }
}

void mouseReleased() {
  if (mode == menu) {
    menuClick();
  }
}
