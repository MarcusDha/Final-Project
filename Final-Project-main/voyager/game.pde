float rx;
void game() {
  background(0);

  for (stars star : s) {
    star.move();
    star.display();
  }

  for (planet pt : pt) {
    pt.physics();
    pt.display();
  }
  
  if (gass == true) {
    gas();
    if (dist(shipX, shipY, tgasx, tgasy) <= shipD/2 + gasD/2) {
      gas.play();
      fuel = 100;
      gass = false;
    }
  }
  
  ship(width/2, height/2, rx);
   
  fuelbar(); 
  
  map = map1;
  
  }
}

void gameClick() {
}
