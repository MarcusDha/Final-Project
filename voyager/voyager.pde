int mode;
final int menu = 0;
final int game = 1;
final int settings = 2;
final int items = 3;

void setup() {
    size (800, 600);
    textAlign(CENTER, CENTER);
    imageMode(CENTER);
}

void draw() {
    //mode framework
    if (mode == game) {
        game();
    }
    else if (mode == menu) {
        menu();
    }
    else if (mode == settings) {
        settings();
    }
    else if (mode == items) {
        items();
    }
}