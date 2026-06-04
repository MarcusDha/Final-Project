void menu() {
  music.play();
  background(0);
  fill(255);
  textFont(spacebar);
  textSize(64);
  text("VOYAGER QUEST", width / 2, height / 2 - 100);
}

void menuClick () {
  mode = game;
}
