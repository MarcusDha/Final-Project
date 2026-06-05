void guide () {
  background(0);
  for (stars star : s) {
    star.move();
    star.display();
  }

  //grey box
  stroke(white);
  fill(lGrey);
  rect(width/2, height/2, 800, 600);
  //mitered corners
  fill(0);
  noStroke();
  rect(135, 105, 50, 50);
  rect(135, height-105, 50, 50);
  rect(width-134, 105, 50, 50);
  rect(width-134, height-105, 50, 50);

  fill(lGrey);
  stroke(white);
  triangle(160, 86, 160, 128, 115, 128);
  triangle(160, height-86, 160, height-128, 115, height-128);
  triangle(width-160, 86, width-160, 128, width-115, 128);
  triangle(width-160, height-86, width-160, height-128, width-115, height-128);

  stroke(lGrey);
  line(165, 128, 118, 128);
  line(160, 128, 160, 89);
  line(165, height-128, 118, height-128);
  line(160, height-130, 160, height-89);
  line(width-165, 128, width-118, 128);
  line(width-160, 130, width-160, 89);
  line(width-160, height-128, width-118, height-128);
  line(width-160, height-130, width-160, height-89);
}

void guideClick () {
}
