float rx;
void game() {
  background(0);
  push();
  translate(-shipX+width/2, -shipY+height/2);


  for (stars star : s) {
    star.move();
    star.display();
  }

  for (planet pt : pt) {
    pt.physics();
    pt.display();
  }

  
  pop();
  
  if (gass == true) {
    gas();
    if (dist(shipX, shipY, gasX, gasY) <= shipD/2 + gasD/2) {
      gas.play();
      fuel = 100;
      gass = false;
    }
  }
  
  ship(width/2, height/2, rx);
   
  fuelbar(); 
}

void gameClick() {
}
