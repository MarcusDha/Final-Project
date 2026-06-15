void guide () {
  background(0);
  for (stars star : s){
      star.move();
      star.display();
    }
  guidescreen();
  
  for (btn btn : d) {
    btn.move();
    btn.display();
  }
  
}

void guideClick () {
  for (btn btn : d) {
    btn.click();
  }
}
