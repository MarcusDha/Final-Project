float rx;
void game() {
  background(0);
  push();
  translate(-shipX+width/2, -shipY+height/2);
  
  for (stars star : s) {
    star.move();
    star.display();
  }
  
  pop();
  push();
  ship(width/2, height/2, rx);
  pop();

  for (planet pt : pt) {
    pt.physics();
    pt.display();
  }
  
  //Fuel bar
  rectMode(CENTER);
  stroke(lGrey);
  fill(0);
  rect(width/4,height-60,310,75);
  fill(orange);
  noStroke();
  rect(width/4,height-60,rectX,67.5);
 
  
  fuelP = round(fuel);
  textFont(createFont("SansSerif",16));
  fill(255);
  textSize(80);
  text(fuelP+ "%",width/4, height-60);
  
  rectX = map(fuel,0,100,0,300);
}

void gameClick() {
}
