class planet {
  float x,y,s;

  planet(float x, float y, float s) {
    this.x = x;
    this.y = y;
    this.s = s;
  }

  void display() {
    fill(255);
    noStroke();
    circle(x, y, s);
  }

  void physics() {
    if (dist(shipX, shipY, x, y) < s+50/2) {
    }
    //close gravitational pull
    if (dist(shipX, shipY, x, y) < s*1.5) {
      if (shipX>=x) {
        shipVX-=(accel*0.4);
      }
      if (shipX<=x) {
        shipVX+=(accel*0.4);
      }
      if (shipY>=y) {
        shipVY-=(accel*0.4);
      }
      if (shipY<=y) {
        shipVY+=(accel*0.4);
      }
    } 
  }
}
