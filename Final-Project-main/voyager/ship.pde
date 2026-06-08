void ship (int x, int y, float r) {
  rotate(radians(r));
  image(spaceship, shipX, shipY, 75, 112.5);
  
  shipX = shipX + shipVX;
  shipY = shipY + shipVY;
  
  
  
  if (wkey && shipVY >= -3) shipVY -= 0.25;
  if (skey && shipVY <= 3) shipVY += 0.25;
  if (akey && shipVX >= -3) shipVX -= 0.25;
  if (dkey && shipVX <=3) shipVX += 0.25;
  
}
