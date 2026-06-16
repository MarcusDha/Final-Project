int gasX = width+400;
int gasY = height + 600;
int gasD = 75;
float tgasx, tgasy;
boolean gass = true;

void gas () {
  tgasx = gasX-shipX+width/2;
  tgasy = gasY-shipY+height/2;
  fill(0);
  stroke(white);
  circle(tgasx, tgasy, gasD);
  image(can,tgasx,tgasy,75,75);
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
