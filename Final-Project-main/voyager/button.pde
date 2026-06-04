boolean p;
class btn {
  float x,y;
  float btX=100;
  float tgX=130;
  float spX;
  btn(float x, float y) {
    this.x=x;
    this.y=y;
  }
  void move() {
  boolean hover =
    mouseX >= x-50 && mouseX <= x+50 &&
    mouseY >= y-50 && mouseY <= y+50 ;
  float target=100;
  if (hover) {
    target = tgX;
  }
  if (p && hover) target = 110;
  btX += (target - btX) * 0.2;
  }
  
  void display() {
    fill(255,0,0);
    stroke(255);
    strokeWeight(5);
    square(x,y,btX);
  }
}
