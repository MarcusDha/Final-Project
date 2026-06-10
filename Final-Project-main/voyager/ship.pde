void ship (int x, int y, float r) {
  //circle for collisions
  strokeWeight(3);
  stroke(255);
  fill(0);
  push();
  translate(shipX, shipY);
  rotate(radians(r));
  circle(0, 0, 75);
  image(spaceship, 0, 0, 56.25, 84.375);
  pop();


  shipX = shipX + shipVX;
  shipY = shipY + shipVY;


  if (fuel > 0) {
    if (wkey) {
      shipVX += cos(radians(rx))*0.1;
      shipVY += sin(radians(rx))*0.1;
    }
    //if (skey && shipVY <= 2.5) shipVY += 0.25;
    if (akey) rx -= 1;
    if (dkey) rx += 1;

    if (wkey) fuel -= 0.1;
    if (skey) fuel -= 0.1;

    if (wkey == false) {
      if (shipVY < 0) {
        shipVY += 0.05;
      } 
      if (shipVY > 0) {
        shipVY -= 0.05;
      } 
      if (shipVX < 0) {
        shipVX +=0.05;
      } 
      if (shipVX > 0) {
        shipVX -= 0.05;
      }
    }

  }

  //if (shipVX > 1 || shipVX < -1) fuel -= 1;
  //if (shipVY > 1 || shipVY < -1) fuel -= 1;
}
