void ship (int x, int y, float r) {
  
  //circle for collisions
  strokeWeight(3);
  stroke(255);
  fill(0);
  circle(shipX,shipY, 100);
  
  rotate(radians(r));
  image(spaceship, shipX, shipY, 75, 112.5);
  
  
  shipX = shipX + shipVX;
  shipY = shipY + shipVY;
  
  
  
  if (wkey && shipVY >= -3) shipVY -= 0.25;
  if (skey && shipVY <= 3) shipVY += 0.25;
  if (akey && shipVX >= -3) shipVX -= 0.25;
  if (dkey && shipVX <=3) shipVX += 0.25;
  
  if (wkey == false) {
    if (shipVY < 0) { 
      shipVY += 0.05;
    }
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
