void optionscreen () {
  stroke(white);
  fill(lGrey);
  rect(width/2, height/2, 800, 600);
  //mitered corners
  fill(0);
  noStroke();
  rect(135, 245, 50, 50);
  rect(135, height-245, 50, 50);
  rect(width-134, 245, 50, 50);
  rect(width-134, height-245, 50, 50);

  fill(lGrey);
  stroke(white);
  triangle(160, 227, 160, 270, 115, 270);
  triangle(160, height-227, 160, height-270, 115, height-270);
  triangle(width-160, 227, width-160, 270, width-115, 270);
  triangle(width-160, height-227, width-160, height-270, width-115, height-270);

  stroke(lGrey);
  line(165, 270, 118, 270);
  line(160, 270, 160, 229);
  line(165, height-270, 118, height-270);
  line(160, height-270, 160, height-229);
  line(width-165, 270, width-118, 270);
  line(width-160, 270, width-160, 229);
  line(width-160, height-270, width-118, height-270);
  line(width-160, height-270, width-160, height-229);
}
