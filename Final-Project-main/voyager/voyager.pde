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
ArrayList<stars> s = new ArrayList<stars>();

//mode variables
int mode;
final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;

//font variables
PFont spacebar;

PImage spaceship;

//color variables
color white = #FFFFFF;
color dGrey = #898484;
color lGrey = #D1CFCF;

//ship ints
float shipX = width+400;
float shipY = height+300;
float shipVX;
float shipVY;

void setup() {
  size (1024, 768);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  spaceship = loadImage("R.png");
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
  }
}
