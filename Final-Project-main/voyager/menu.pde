float fade = 0;
boolean p;
void menu() {
  background(0);

  for (stars star : s) {
    star.move();
    star.display();
  }

  for (btn btn : b) {
    btn.move();
    btn.display();
  }


  music.play();
  fill(255);
  textFont(spacebar);
  textSize(64);
  text("VOYAGER QUEST", width / 2, height / 2 - 100);
  fill(0, 0, 0, fade);
  noStroke();
  rect(width/2, height/2, width, height);
}

void menuClick () {
  for (btn btn : b) {
    btn.click();
  }
}
