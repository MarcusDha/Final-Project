class planet {
  float x,y,s,tx,ty;

  planet(float x, float y, float s) {
    this.x = x;
    this.y = y;
    this.s = s;
  }

  void display() {
    fill(255);
    noStroke();
    tx=x-shipX+width/2;
    ty=y-shipY+height/2;
    circle(tx, ty, s);

  }

  void physics() {
    if (dist(shipX, shipY, tx, ty) < (s+shipD)/2) {
      //mode=gameover;
    }
    //close gravitational pull
    if (dist(shipX, shipY, tx, ty) < s*1.5) {
      if (shipX>=tx) {
        shipVX-=(accel*0.4);
      }
      if (shipX<=tx) {
        shipVX+=(accel*0.4);
      }
      if (shipY>=ty) {
        shipVY-=(accel*0.4);
      }
      if (shipY<=ty) {
        shipVY+=(accel*0.4);
      }
    } 
  }
}
