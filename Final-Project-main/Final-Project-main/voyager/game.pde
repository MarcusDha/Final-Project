int wx,wy;
void game() {
  wy=100;
  background(0);
  circle(width/2, height /2, 10);
  
  //movement
  wx++;
  windowMove(wx,wy);
  fill(255);
  circle(width/2,height/2,100);
}
