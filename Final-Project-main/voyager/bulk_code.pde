void guidescreen () {
  stroke(white);
  fill(lGrey);
  rect(width/2, height/2, 800, 600);
  //mitered corners
  fill(0);
  noStroke();
  rect(135, 230, 50, 50);
  rect(135, height-230, 50, 50);
  rect(width-134, 230, 50, 50);
  rect(width-134, height-230, 50, 50);

  fill(lGrey);
  stroke(white);
  triangle(160, 214, 160, 255, 115, 255);
  triangle(160, height-215, 160, height-255, 115, height-255);
  triangle(width-160, 214, width-160, 255, width-115, 255);
  triangle(width-160, height-215, width-160, height-255, width-115, height-255);

  stroke(lGrey);
  line(165, 255, 118, 255);
  line(160, 255, 160, 214);
  line(165, height-255, 118, height-255);
  line(160, height-255, 160, height-214);
  line(width-165, 255, width-118, 255);
  line(width-160, 255, width-160, 214);
  line(width-160, height-255, width-118, height-255);
  line(width-160, height-255, width-160, height-214);
}

void optionscreen () {
  stroke(white);
  fill(lGrey);
  rect(width/2, height/2, 800, 600);
  //mitered corners
  fill(0);
  noStroke();
  rect(135, 230, 50, 50);
  rect(135, height-230, 50, 50);
  rect(width-134, 230, 50, 50);
  rect(width-134, height-230, 50, 50);

  fill(lGrey);
  stroke(white);
  triangle(160, 214, 160, 255, 115, 255);
  triangle(160, height-215, 160, height-255, 115, height-255);
  triangle(width-160, 214, width-160, 255, width-115, 255);
  triangle(width-160, height-215, width-160, height-255, width-115, height-255);

  stroke(lGrey);
  line(165, 255, 118, 255);
  line(160, 255, 160, 214);
  line(165, height-255, 118, height-255);
  line(160, height-255, 160, height-214);
  line(width-165, 255, width-118, 255);
  line(width-160, 255, width-160, 214);
  line(width-160, height-255, width-118, height-255);
  line(width-160, height-255, width-160, height-214);
}
