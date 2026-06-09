void mousePressed() {
  if (mode == game) {
    gameClick();
  } else if (mode == guide) {
    guideClick();
  } else if (mode == options) {
    optionClick();
  } 
}

void mouseReleased() {
  if (mode == menu) {
    menuClick();
  }
}
