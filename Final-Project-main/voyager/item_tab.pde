boolean parts1 = true;
boolean arrow;

void parts () {
  background(0);

  imageMode(CORNER);
  background(0);
  image(space, 0, 0, 1600, 800);
  imageMode(CENTER);


  for (stars star : s) {
    star.move();
    star.display();
  }


  guidescreen();
  image(voyager, width/2, height/2, 969, 678);


  for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void screen(String sss, String ss, String s, String a) {
  if (parts1 == true) {
    mode = pause1;
    rectMode(CORNER);
    fill(0, 100);
    rect(0, 0, width, height);

    rectMode(CENTER);
    fill(lGrey);
    stroke(white);
    rect(width/2, height/2, 900, 600);
    textFont(spacebar);
    textSize(35);
    fill(255, 0, 0);
    text(sss, width/2, height/2 - 250);

    textSize(20);
    text(ss, width/2, height/2 -150);

    text(s, width/2, height/2);
    text(a, width/2, height/2 + 100);

    if (arrow == true) {
      fill(255);
      circle(width/2, height/2+250, 50);
      stroke(0);
      line(width/2-10, height/2+ 225, width/2 + 20, height/2 + 250);
      line(width/2-10, height/2+275, width/2+20, height/2+250);
    }
  }
}

void partsClick() {
  for (btn btn : d) {
    btn.click();
  }

  //if (mouseX > 588 && mouseX < 764 && mouseY > 139 && mouseY < 182) { // high gain antenna
  //  screen("high gain antenna", );
  //}

  //  if (mouseX > 760 && mouseX < 930 && mouseY > 84 && mouseY < 117) { // low energy charged particle
  //    screen("low energy charged particle", " plepl ");
  //  }

  //  if (mouseX > 944 && mouseX < 1190 && mouseY > 85 && mouseY < 103) { // ultraviolet spectrometer
  //    screen("ultraviolet spectrometer", " plepl ");
  //  }

  //  if (mouseX > 955 && mouseX < 1165 && mouseY > 107 && mouseY < 142) { // imaging science subsystem
  //    screen("imaging science subsystem", " plepl ");
  //  }

  //  if (mouseX > 1003 && mouseX < 1072 && mouseY > 151 && mouseY < 166) { //plasma science
  //    screen("plasma science", " plepl ");
  //  }

  if (mouseX > 923 && mouseX < 1029 && mouseY > 174 && mouseY < 189) { //cosmic ray
    arrow = true;
    screen("cosmic ray subsystem", " Looks for very energetic particles in plasma, usually", " Highest sensitivity of three particles detectors", "records particles when they pass through ");
    text("from high radiation fields from planets and stars", width/2, height/2 - 100);
    arrow = false;
  }

  //  if (mouseX > 971 && mouseX < 1146 && mouseY > 442 && mouseY < 456) { //photopolarimeter
  //    screen("Photopolarimeter subsystem", " plepl ");
  //  }

  //  if (mouseX > 1030 && mouseX < 1184 && mouseY > 472 && mouseY < 521) { // infrared
  //    screen("Infrared Interferometer", " plepl ");
  //    textSize(35);
  //    text("spectrometer and radiometer", width/2, height/2-200);
  //  }

  if ( mouseX > 1003 && mouseX < 1182 && mouseY > 552 && mouseY < 588) { // optical calibration
    screen("optical calibration target", "Flat rectangle of known color and brightness", "helps other instruments point towards targets", " ");
    text("for calibration purposes", width/2, height/2 + 50);
  }

  if (mouseX > 885 && mouseX < 1125 && mouseY > 634 && mouseY < 650) { // bus
    screen("bus housing electronics", "Basic structure is a ten-sided box called the box", "Centerline of bus, called Z-axis, always points to earth ", "Each side has compartments that holds");
    text("different electronic instruments", width/2, height/2 + 150);
  }

  //  if ( mouseX > 363 && mouseX < 658 & mouseY > 685 && mouseY < 721) { // planetary radio astronomy
  //    screen("planetary radio astronomy", " plepl ");
  //  }

  //  if (mouseX > 346 && mouseX < 626 && mouseY > 473 && mouseY < 509) { //radioisotope power
  //    screen("radioisotope power system", " plepl ");
  //  }

  //  if (mouseX > 395 && mouseX < 539 && mouseY > 416 && mouseY < 453) { // magnetometer
  //    screen("magnetometer", " plepl ");
  //  }
}
