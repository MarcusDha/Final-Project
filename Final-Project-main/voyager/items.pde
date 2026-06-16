float itemX;
float itemY;
String ss;
float itemD = 75;
boolean item;

void items() {
}

void itemC (int itemX, int itemY, String ss, String sss) {
  PImage pic = loadImage(ss);
  circle(itemX, itemY, itemD);
  image(pic, itemX, itemY, itemD, itemD);

  if (dist(shipX, shipY, itemX, itemY) <= shipD/2 + itemD/2) {
    mode = pause;
    rectMode(CORNER);
    fill(0, 100);
    rect(0, 0, width, height);


    rectMode(CENTER);
    fill(lGrey);
    stroke(white);
    rect(width/2, height/2, 200, 200);
    text(sss + "Read in ITEMS for more info", width, height);
  }
}



void clickc () {
  if (mode == pause) {
    mode = game;
  }
}
