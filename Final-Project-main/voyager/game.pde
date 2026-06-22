float rx;
void game() {
  background(0);

  imageMode(CORNER);
  background(0);
  image(space, 0, 0, 1600, 800);
  imageMode(CENTER);

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

  if (shipY<=-100 || shipY>=height+100 || shipX<=-100) {
    out=true;
  }

  ship(rx);

  fuelbar();
  meteors();
  map1();
  reset();
  newlevel();

  if (item == true && shipX > width + 100) {
      out=true;
  }
}
  void gameClick() {
  }
