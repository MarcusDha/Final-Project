void parts () {
  background(0);
  
  imageMode(CORNER);
  background(0);
  image(space,0,0,1600,800);
  imageMode(CENTER);

  for (stars star : s){
      star.move();
      star.display();
    }
    
    for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void partsClick() {
  for (btn btn : d) {
    btn.click();
  }
}
