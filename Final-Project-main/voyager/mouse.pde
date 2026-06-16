void mousePressed() {
  if (mode == game) {
    gameClick();
  } else if (mode == guide) {
    guideClick();
  } else if (mode == options) {
    optionClick();
  } else if (mode == parts) {
    partsClick();
  } else if (mode == pause) {
    clickc();
  }
}

void mouseReleased() {
  if (mode == menu) {
    menuClick();
  }
}
