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
}

void menuClick () {

  if (mouseX > 462 && mouseX < 555 && mouseY > 534 && mouseY < 630) {
    mode = game;
  }
  
   if (mouseX > 207 && mouseX < 305 && mouseY > 555 && mouseY < 630) {
     mode = options;
   }
   
   if (mouseX > 720 && mouseX < 815 && mouseY > 555 && mouseY < 630) {
     mode = guide;
   }
}
