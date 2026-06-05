void game() {
  background(0);
  for (stars star : s) {
    star.move();
    star.display();
  }
}

void gameClick() {
}
