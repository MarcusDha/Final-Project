int itemX;
int itemY;
String ss;
float itemD = 75;
boolean item = true;

void items() {
}

void itemC (int x, int y, String ss, File f) {
  PImage pic = loadImage(f.getPath());
  circle(itemX, itemY, itemD);
  image(pic, itemX, itemY, itemD, itemD);
    
  if (dist(shipX, shipY, itemX, itemY) <= shipX/2 + itemX/2) {
    itemP();
  }
}


void itemP () {
  rectMode(CORNER);
  fill(0,100);
  rect(0,0,width,height);
  
  
  rectMode(CENTER);
  fill(lGrey);
  stroke(white);
  rect(width/2,height/2,200,200);
  text(ss,width,height);
  
}
