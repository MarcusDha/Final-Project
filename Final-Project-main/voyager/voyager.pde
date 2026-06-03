int mode;
int offset = 0;

final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;

color white = #FFFFFF;
color dGrey = #898484;

void setup() {
  size (1024, 768);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);

  background(0);
  for (int y = 0; y < height; y += random(1, 30)) {
    for (int x = 0; x < width; x += random(1, 30)) {
      circle(x, y, random(1, 3));
    }
    if (offset == 0) offset = 20;
    else offset = 0;
  }
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
