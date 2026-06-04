void mousePressed() {
  if (mode == menu) {
    menuClick();
  } else if (mode == game) {
    gameClick();
  } else if (mode == guide) {
    guideClick();
  } else if (mode == items) {
    itemsClick();
  } else if (mode == options) {
    optionClick();
  }
}
