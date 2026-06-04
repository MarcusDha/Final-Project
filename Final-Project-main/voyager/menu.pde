void menu() {
    background(0);

    for (btn btn : b) {
      btn.move();
      btn.display();
    }

    for (stars star : s){
      star.move();
      star.display();
    }

  music.play();
  fill(255);
  textFont(spacebar);
  textSize(64);
  text("VOYAGER QUEST", width / 2, height / 2 - 100);
    

}

void menuClick () {
  mode = game;
}
