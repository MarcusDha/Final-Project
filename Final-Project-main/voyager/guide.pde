void guide () {
  //grey box
  stroke(white);
  fill(lGrey);
  rect(width/2,height/2,800,600);
  //mitered corners
  fill(0);
  noStroke();
  rect(135,105,50,50);
  rect(135,height-105,50,50);
  rect(width-134,105,50,50);
  rect(width-134,height-105,50,50);
  
  fill(lGrey);
  stroke(white);
  triangle(160,87,160,130,115,130);
  triangle(160,height-87,160,height-130,115,height-130);
  triangle(width-160,87,width-160,130,width-115,130);
  triangle(width-160,height-87,width-160,height-130,width-115,height-130);
  
  stroke(lGrey);
  line(165,130,118,130);
  line(160,130,160,89);
  line(165,height-130,118,height-130);
  line(160,height-130,160,height-89);
  line(width-165,130,width-118,130);
  line(width-160,130,width-160,89);
  line(width-160,height-130,width-118,height-130);
  line(width-160,height-130,width-160,height-89);
  
}

void guideClick () {
  
}
