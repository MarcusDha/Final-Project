void game() {
  background(0);
  for (stars star : s) {
    star.move();
    star.display();
  }
  
  ship(width/2,height/2,0);
}

void gameClick() {
}
