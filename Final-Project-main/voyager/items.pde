int itemX;
int itemY;
String ss;
float itemD = 75;
boolean item = true;

void items() {
}

void itemC (int itemX, int itemY, String ss, String sss) {
  PImage pic = loadImage(ss);
  if (item) {
    circle(itemX, itemY, itemD);
    image(pic, itemX, itemY, itemD, itemD);
  }

  if (item) {
    if (dist(shipX, shipY, itemX, itemY) <= shipD/2 + itemD/2) {
      item = false;
      mode = pause;
      rectMode(CORNER);
      fill(0, 100);
      rect(0, 0, width, height);


      rectMode(CENTER);
      fill(lGrey);
      stroke(white);
      rect(width/2, height/2, 600, 200);
      textFont(spacebar);
      textSize(25);
      fill(255, 0, 0);
      text(sss, width/2, height/2-50);
      text("Read in ITEMS for more info", width/2, height/2 + 50);
    }
  }
}

void clickc () {
  if (mode == pause) {
    mode = game;
  }
}
 
