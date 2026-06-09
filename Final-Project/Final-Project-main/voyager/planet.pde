class planet {
  float x;
  float y;
  float s;

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
    if (dist(shipX, shipY, x, y) < s*2) {
      if (shipX>=x) {
        shipVX-=0.1;
      }
      if (shipX<=x) {
        shipVX+=0.1;
      }
      if (shipY>=y) {
        shipVY-=0.1;
      }
      if (shipY<=y) {
        shipVY+=0.1;
      }
    } 
  }
}
