void ship (int x, int y, float r) {

  //circle for collisions
  strokeWeight(3);
  stroke(255);
  fill(0);
  circle(shipX, shipY, shipD);


  rotate(radians(r));
  image(spaceship, shipX, shipY, 42.1875, 63.28125);


  shipX = shipX + shipVX;
  shipY = shipY + shipVY;


  if (fuel > 0) {
    if (wkey && shipVY >= -2.5) shipVY -= 0.15;
    if (skey && shipVY <= 2.5) shipVY += 0.15;
    if (akey && shipVX >= -2.5) shipVX -= 0.15;
    if (dkey && shipVX <=2.5) shipVX += 0.15;

    if (wkey) fuel -= 0.1;
    if (skey) fuel -= 0.1;
    if (akey) fuel -= 0.1;
    if (dkey) fuel -= 0.10;

    if (wkey == false)
      if (shipVY < 0) {
        shipVY += 0.05;
      }

    if (skey == false) {
      if (shipVY > 0) {
        shipVY -= 0.05;
      }
    }

    if (akey == false) {
      if (shipVX < 0) {
        shipVX += 0.05;
      }
    }

    if (dkey == false) {
      if (shipVX > 0) {
        shipVX -= 0.05;
      }
    }

    if (spacekey == true) {
      if (wkey && shipVY >= -4) shipVY -= 0.5;
      if (skey && shipVY <= 4) shipVY += 0.5;
      if (akey && shipVX >= -4) shipVX -= 0.5;
      if (dkey && shipVX <= 4) shipVX += 0.5;

      if (wkey) fuel -= 0.2;
      if (skey) fuel -= 0.2;
      if (akey) fuel -= 0.2;
      if (dkey) fuel -= 0.2;
    }
  }
  
  
}
