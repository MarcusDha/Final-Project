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

    stroke(0);
    strokeWeight(4);
    fill(0);
    textSize(32);
    text("voyager", width / 2, height / 2);
    


    //background =====================
    //background(0);
    //for (int y = 0; y < height; y += random(1, 30)) {
    //  for (int x = 0; x < width; x += random(1, 30)) {
    //    circle(x, y, random(1,3));
    //  }
    //}
}

void menuClick () {
  mode = game;
}
