float itemX, itemY, tItemX, tItemY;
String ss;
float itemD = 75;
boolean item = true;

void items() {
}

void itemC (int itemX, int itemY, String ss, String sss) {
  PImage pic = loadImage(ss);
  tItemX = itemX-shipX+width/2;
  tItemY = itemY-shipY+height/2;
  if (item) {
    circle(tItemX, tItemY, itemD);
    image(pic, tItemX, tItemY, itemD, itemD);
  }

  if (item) {
    if (dist(shipX, shipY, tItemX, tItemY) <= shipD/2 + itemD/2) {
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
 
