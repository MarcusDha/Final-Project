void parts () {
  background(0);
  
  imageMode(CORNER);
  background(0);
  image(space,0,0,1600,800);
  imageMode(CENTER);
  

  for (stars star : s){
      star.move();
      star.display();
    }
    
    
    guidescreen();
    image(voyager,width/2,height/2,969,678);
    
    
    for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void partsClick() {
  for (btn btn : d) {
    btn.click();
  }
  
  if (mouseX > 588 && mouseX < 764 && mouseY > 139 && mouseY < 182) { // high gain antenna
  }
  
  if (mouseX > 760 && mouseX < 930 && mouseY > 84 && mouseY < 117) { // low energy charged particle
  }
  
  if (mouseX > 944 && mouseX < 1190 && mouseY > 85 && mouseY < 103) { // ultraviolet spectrometer
  }
  
  if (mouseX > 955 && mouseX < 1165 && mouseY > 107 && mouseY < 142) { // imaging science subsystem
  }
  
  if (mouseX > 1003 && mouseX < 1072 && mouseY > 151 && mouseY < 166) { //plasma science
  }
  
  if (mouseX > 923 && mouseX < 1029 && mouseY > 174 && mouseY < 189) { //cosmic ray
  }
  
  if (mouseX > 971 && mouseX < 1146 && mouseY > 442 && mouseY < 456) { //photopolarimeter
  }
  
  if (mouseX > 1030 && mouseX < 1184 && mouseY > 472 && mouseY < 521) { // infrared
  }
  
  if ( mouseX > 1003 && mouseX < 1182 && mouseY > 552 && mouseY < 588) { // optical calibration
  }
  
  if (mouseX > 885 && mouseX < 1125 && mouseY > 634 && mouseY < 650) { // bus
  }
  
  if ( mouseX > 363 && mouseX < 658 & mouseY > 685 && mouseY < 721) { // planetary radio astronomy
  }
  
  if (mouseX > 346 && mouseX < 626 && mouseY > 473 && mouseY < 509) { //radioisotope power
  }
  
  if (mouseX > 395 && mouseX < 539 && mouseY > 416 && mouseY < 453) { // magnetometer
  }
}
