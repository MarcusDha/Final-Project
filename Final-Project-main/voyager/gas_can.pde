int gasX = width+400;
int gasY = height + 600;
int gasD = 75;
boolean gass = true;

void gas () {
  fill(0);
  stroke(white);
  circle(gasX, gasY, gasD);
  image(can,gasX,gasY,75,75);
}


//gas can drawing
void gascan (int x, int y) {
  fill(255, 0, 0);
  rect(x, y, 32, 56);
}

void fuelbar () {
  rectMode(CENTER);
  stroke(lGrey);
  fill(0);
  rect(width/4, height-60, 310, 75);
  fill(orange);
  noStroke();
  rect(width/4, height-60, rectX, 67.5);


  fuelP = round(fuel);
  textFont(createFont("SansSerif", 16));
  fill(255);
  textSize(80);
  text(fuelP+ "%", width/4, height-60);

  rectX = map(fuel, 0, 100, 0, 300);
}
