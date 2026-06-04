void mousePressed() {
  if (mode == game) {
    gameClick();
  } else if (mode == guide) {
    guideClick();
  } else if (mode == items) {
    itemsClick();
  } else if (mode == options) {
    optionClick();
  } else if (mode == menu) {
    p =! p;
  }
}

void mouseReleased() {
  if (mode == menu) {
    menuClick();
  }
}
