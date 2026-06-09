void game() {
  background(0);
  push();
  translate(-shipX+width/2, -shipY+height/2);
  for (stars star : s) {
    star.move();
    star.display();
  }
  pop();
  square(400, 300, 100);
  ship(width/2, height/2, 0);
}

void gameClick() {
}
