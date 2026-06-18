class planet {
  float x,y,s,tx,ty,pr,pvr;

  planet(float x, float y, float s, float pvr) {
    this.x = x;
    this.y = y;
    this.s = s;
    this.pvr = pvr;
  }

  void display() {
    pr+=pvr;
    fill(255);
    noStroke();
    tx=x-shipX+width/2;
    ty=y-shipY+height/2;
    push();
    translate(tx,ty);
    rotate(radians(pr));
    image(pl2,0, 0, s, s);
    pop();
  }

  void physics() {
    if (dist(shipX, shipY, tx, ty) < (s+shipD)/2) {
      out=true;
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
