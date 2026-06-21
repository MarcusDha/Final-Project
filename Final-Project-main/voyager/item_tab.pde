boolean parts1 = true;
boolean arrow = false;
boolean parts2 = true;

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
  fill(255,0,0);
  textSize(30);
  text("CLICK ON", width/2 - 300, height/2 - 280);
  text("A TEXT", width/2 - 300, height/2 - 240);


  for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void screen(String sss, String ss, String s, String a, String aa) {
  if (parts1 == true) {
    parts2 = true;
    mode = pause1;
    rectMode(CORNER);
    fill(0, 100);
    rect(0, 0, width, height);

    rectMode(CENTER);
    fill(lGrey);
    stroke(white);
    rect(width/2, height/2, 900, 700);
    textFont(spacebar);
    textSize(35);
    fill(255, 0, 0);
    text(sss, width/2, height/2 - 250);

    textSize(20);
    text(ss, width/2, height/2 -150);

    text(s, width/2, height/2);
    text(a, width/2, height/2 + 150);
    text(aa, width/2, height/2 + 250);

    if (arrow == true) {
      parts2 = false;
      fill(255, 0, 0);
      rect(width/2, height/2 + 250, 100, 100);
    }
  }
}

void partsClick() {
  for (btn btn : d) {
    btn.click();
  }

  if (mouseX > 588 && mouseX < 764 && mouseY > 139 && mouseY < 182) { // high gain antenna
    screen("high gain antenna", "Main communication dish for sending info", "Receives commands from NASA S deep space network  ", "Always points towards earth", "It focuses radio signals into a narrow, powerful");
    text("beam for long-distance communication", width/2, height/2 + 300);
    text("back to earth", width/2, height/2 - 100);
  }

    if (mouseX > 760 && mouseX < 930 && mouseY > 84 && mouseY < 117) { // low energy charged particle
      screen("low energy charged particle", "measures charged particales with energy less than", "determines particles speed, direction,", "studies particles from stars and deep space ", "has widest energy range of voyagers");
      text(" cosmic rays",width/2,height/2 -100);
      text("and abundance", width/2,height/2 +50);
      text("particle detectors", width/2, height/2 + 300);
    }

    if (mouseX > 944 && mouseX < 1190 && mouseY > 85 && mouseY < 103) { // ultraviolet spectrometer
      screen("ultraviolet spectrometer", "detects ultraviolet light emitted or", "identifies gases and elements in", "studies auroras and atmospheric compostion", "examines rings and hydrogen clouds around planets");
      text("absorbed by materials", width/2, height/2 -100);
      text("planetary atmospheres", width/2, height/2 + 50);
    }

    if (mouseX > 955 && mouseX < 1165 && mouseY > 107 && mouseY < 142) { // imaging science subsystem
      screen("imaging science subsystem", "consists of wide angle and narrow angle cameras", "Captured famous images of Jupiter, Saturn, Uranus,", "Provided detailed photographs of moons, rings,", "Supported other scientific investigations with");
      text("and neptune", width/2, height/2 + 50);
      text("and atmospheres", width/2, height/2 + 200);
      text("visual data", width/2, height/2 +300);
    }

    if (mouseX > 1003 && mouseX < 1072 && mouseY > 151 && mouseY < 166) { //plasma science
      screen("plasma science", "Measures low-energy ions and electrons in plasma", "Determines plasma speed, density, and temperature", "Studies the solar wind and planetary magnetospheres", "Helped detect conditions near the heliopause");
    }

  if (mouseX > 923 && mouseX < 1029 && mouseY > 174 && mouseY < 189) { //cosmic ray
    screen("cosmic ray subsystem", " Looks for very energetic particles in plasma, usually", " Highest sensitivity of three particles detectors", "records particles when they pass through ","Measures the energy of electrons and atomic nuclei");
    text("from high radiation fields from planets and stars", width/2, height/2 - 100);
  }

    if (mouseX > 971 && mouseX < 1146 && mouseY > 442 && mouseY < 456) { //photopolarimeter
      screen("Photopolarimeter subsystem", "Measures brightness and polarization of light", "Studies particles in planetary atmospheres and", "Helps determine surface textures and compositions", "Searches for lightning and auroral activity");
      text("saturns rings", width/2, height/2 + 50);
      text("of moons", width/2,height/2 + 200);
    }

    if (mouseX > 1030 && mouseX < 1184 && mouseY > 472 && mouseY < 521) { // infrared
      screen("Infrared Interferometer", "Measures infrared radiation and heat", "Determines temperatures of planets and moons", "Identifies chemicals and compounds in atmospheres", "Measures how much energy a planet absorbs and emits");
      textSize(35);
      text("spectrometer and radiometer", width/2, height/2-200);
    }

  if ( mouseX > 1003 && mouseX < 1182 && mouseY > 552 && mouseY < 588) { // optical calibration
    screen("optical calibration target", "Flat rectangle of known color and brightness", "helps other instruments point towards targets", " ", "");
    text("for calibration purposes", width/2, height/2 + 50);
  }

  if (mouseX > 885 && mouseX < 1125 && mouseY > 634 && mouseY < 650) { // bus
    screen("bus housing electronics", "Basic structure is a ten-sided box called the box", "Centerline of bus, called Z-axis, always points ", "Each side has compartments that holds", "");
    text("to earth", width/2, height/2 + 50);
    text("different electronic instruments", width/2, height/2 + 200);
  }

    if ( mouseX > 363 && mouseX < 658 & mouseY > 685 && mouseY < 721) { // planetary radio astronomy
      screen("planetary radio astronomy", "Detects natural radio emissions from planets", "Uses long antennas arranged in a V shape", "Studies radio signals generated by planetary", "Helps investigate plasma and energetic");
      text("magnetic fields", width/2, height/2 + 200);
      text("particles environments", width/2, height/2 + 300);
    }

    if (mouseX > 346 && mouseX < 626 && mouseY > 473 && mouseY < 509) { //radioisotope power
      screen("radioisotope power system", "Generates electricity from decaying plutonium", "Powers all spacecraft systems and instruments", "Produces electricity continuously without sunlight", "Has enabled Voyager to operate for nearly");
      text("fifty years", width/2, height/2 + 300);
    }

    if (mouseX > 395 && mouseX < 539 && mouseY > 416 && mouseY < 453) { // magnetometer
      screen("magnetometer", "Measures magnetic fields around planets and in space", "Investigates how solar wind interacts with", "Studies interactions between moons, rings,", "Searches for lightning and auroral activity");
      text(" planetary magnetic fields", width/2, height/2 + 50);
      text(" and magnetospheres", width/2, height/2 + 200);
    }

  if (arrow == true) {
    if (mouseX > width/2-50 && mouseX < width/2 + 50 && mouseY > height/2 + 200 && mouseY < height/2 + 300) {
      circle(0, 0, 1000);
    }
  }
}
