void options () {
  background(0);
  
  imageMode(CORNER);
  background(0);
  image(space,0,0,1600,800);
  imageMode(CENTER);

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
