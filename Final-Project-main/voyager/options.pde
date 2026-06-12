void options () {
  background(0);
  for (stars star : s) {
    star.move();
    star.display();
  }

  optionscreen();

  noStroke();
  for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void optionClick () {
  for (btn btn : d) {
    btn.click();
  }
}
