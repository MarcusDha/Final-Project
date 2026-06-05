class btn {
  int modes;
  float x,y,spX,btL;
  float btX=100;
  float tgX=130;
  String s;
  btn(float x, float y, float btL, int modes, String s) {
    this.x=x;
    this.y=y;
    this.btL=btL;
    this.modes=modes;
    this.s=s;
  }
  void move() {
  boolean hover =
    mouseX >= x-(btX+btL)/2 && mouseX <= x+(btX+btL)/2 &&
    mouseY >= y-btX/2 && mouseY <= y+btX/2 ;
  float target=100;
  if (hover) {
    target = tgX;
  }
  if (mousePressed && hover) target = 110;

  btX += (target - btX) * 0.2;
  }
  
  void display() {
    fill(255,0,0);
    stroke(255);
    strokeWeight(5);
    rect(x,y,btL+btX,btX);
    fill(255);
    textFont(spacebar);
    textSize(btX/4.5);
    text(s, x, y);
  }

  void click() {
    if (mouseX >= x-(btX+btL)/2 && mouseX <= x+(btX+btL)/2 &&
    mouseY >= y-btX/2 && mouseY <= y+btX/2) {
      mode = modes;
    }
  }
}