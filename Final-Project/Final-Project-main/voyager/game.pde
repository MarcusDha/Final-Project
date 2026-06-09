void game() {
  background(0);
  push();
  translate(-shipX+width/2, -shipY+height/2);
  for (stars star : s) {
    star.move();
    star.display();
  }
  pop();
  ship(width/2, height/2, 0);

  for (planet pt : pt) {
    pt.physics();
    pt.display();
  }
}

void gameClick() {
}
