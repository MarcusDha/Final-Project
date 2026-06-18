float fade = 0;
boolean p;
void menu() {
  imageMode(CORNER);
  background(0);
  image(space,0,0,1600,800);
  imageMode(CENTER);

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
  
 
}

void menuClick () {
  for (btn btn : b) {
    btn.click();
  }
}
