int mode;
final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;

void setup() {
  size (1600, 1000);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
}

void draw() {
  //mode framework
  if (mode == game) {
    game();
  } else if (mode == menu) {
    menu();
  } else if (mode == options) {
    options();
  } else if (mode == items) {
    items();
  } else if (mode == guide) {
    guide();
  }
}
