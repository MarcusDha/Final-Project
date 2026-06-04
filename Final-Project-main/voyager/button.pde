boolean p;
class btn {
  float x,y,btS,tgX, target, targetclick;
  float spX;
  btn(float x, float y, float btS, float tgX, float target, float targetclick) {
    this.x=x;
    this.y=y;
    this.btS=btS;
    this.tgX=tgX;
    this.target=target;
    this.targetclick=targetclick;
  }
  void move() {
  boolean hover =
    mouseX >= x-btS/2 && mouseX <= x+btS/2 &&
    mouseY >= y-btS/2 && mouseY <= y+btS/2 ;
  if (hover) {
    target = tgX;
  }
  if (p && hover) target = targetclick;
  btS += (target - btS) * 0.2;
  }
  
  void display() {
    fill(255);
    square(x,y,btS);
  }
}
