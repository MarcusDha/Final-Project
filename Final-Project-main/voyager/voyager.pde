import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//audio variables
Minim minim;
AudioPlayer music, ship, gas, click;

//arrays
ArrayList<btn> b = new ArrayList<btn>();
ArrayList<btn> d = new ArrayList<btn>();
ArrayList<stars> s = new ArrayList<stars>();
ArrayList<planet> pt = new ArrayList<planet>();

//mode variables
int mode;
int map;
final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;
final int parts = 5;
final int gameover = 6;
final int map1 = 7;

//font variables
PFont spacebar;

//pictures
PImage spaceship;
PImage can;

//color variables
color white = #FFFFFF;
color dGrey = #898484;
color lGrey = #D1CFCF;
color orange = #FAC40F;


//ship ints
float shipX, shipY, shipVX, shipVY, accel;
float fuel = 100;
float rectX = 300;
int shipD = 75;
int fuelP;


void setup() {
  size (1024, 1025);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  init();
}

void draw() {
  println(mouseX, mouseY);

  //mode framework
  if (mode == game) {
    game();
  } else if (mode == menu) {
    menu();
  } else if (mode == options) {
    options();
  } else if (mode == guide) {
    guide();
  } else if (mode == gameover) {
    gameover();
  } else if (mode == parts) {
    parts();
  }
  
  if (map == map1) {
    map1();
  }
}
