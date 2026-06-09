void ship (int x, int y, float r) {

  //circle for collisions
  strokeWeight(3);
  stroke(255);
  fill(0);
  circle(shipX, shipY, 75);

  rotate(radians(r));
  image(spaceship, shipX, shipY, 56.25, 84.375);


  shipX = shipX + shipVX;
  shipY = shipY + shipVY;


  if (fuel > 0) {
    if (wkey && shipVY >= -2.5) shipVY -= 0.25;
    if (skey && shipVY <= 2.5) shipVY += 0.25;
    if (akey && shipVX >= -2.5) shipVX -= 0.25;
    if (dkey && shipVX <=2.5) shipVX += 0.25;
    
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
  }
  
  //if (shipVX > 1 || shipVX < -1) fuel -= 1;
  //if (shipVY > 1 || shipVY < -1) fuel -= 1;
}
