void menu() {
    background(0);

    for (stars star : s){
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
 
}

void menuClick () {
  mode = game;
}
