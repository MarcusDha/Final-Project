

void ship (int x, int y, float r) {
  //circle for collisions
  strokeWeight(3);
  stroke(255);
  fill(0);
  push();
  translate(shipX, shipY);
  rotate(radians(r));
  circle(0, 0, shipD);
  image(spaceship, 0, 0, 63.28125, 42.1875);
  pop();

  shipX = shipX + shipVX;
  shipY = shipY + shipVY;


  if (fuel > 0) {
    if (wkey) {
      shipVX += cos(radians(rx))*0.05;
      shipVY += sin(radians(rx))*0.05;
    }
    //if (skey && shipVY <= 2.5) shipVY += 0.25;
    if (akey) rx -= 3;
    if (dkey) rx += 3;

    if (wkey) fuel -= 0.1;
    if (skey) fuel -= 0.1;

    /*
    if (wkey == false) {
      if (shipVY < 0) {
        shipVY += accel;
      }
      if (shipVY > 0) {
        shipVY -= accel;
      }
      if (shipVX < 0) {
        shipVX += accel;
      }
      if (shipVX > 0) {
        shipVX -= accel;
      }
    }
      */

    if (spacekey == true) {
      if (wkey && shipVY >= -4) shipVY -= 0.25;
      if (skey && shipVY <= 4) shipVY += 0.25;
      if (akey && shipVX >= -4) shipVX -= 0.25;
      if (dkey && shipVX <= 4) shipVX += 0.25;

      if (wkey) fuel -= 0.2;
      if (skey) fuel -= 0.2;
      if (akey) fuel -= 0.2;
      if (dkey) fuel -= 0.2;
    }
  }
}
