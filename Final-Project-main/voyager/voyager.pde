import processing.javafx.*;

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
int map = 8;
final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;
final int pause = 5;
final int parts = 6;
final int gameover = 7;
final int story = 22;


//font variables
PFont spacebar;

//pictures
PImage spaceship, can, antenna, pl1, pl2, space;


//color variables
color white = #FFFFFF;
color dGrey = #898484;
color lGrey = #D1CFCF;
color orange = #FAC40F;

//planet
float[] rw,rh,rs;

//ship variables
float shipX, shipY, shipVX, shipVY, accel;
float fuel = 100;
float rectX = 300;
int shipD = 75;
int fuelP;

//resetting
float rcount, rc;
boolean out, cleared;

void setup() {
  size (1600, 800, FX2D);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  init();
}

void draw() {

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
  } else if (mode == story) {
    story();
  }

  if (map == map1) {
    map1();
    //} else if (map == map2) {
    //  map2();
    //} else if (map == map3) {
    //  map3();
    //} else if (map == map4) {
    //  map4();
    //} else if (map == map5) {
    //  map5();
    //} else if (map == map6) {
    //  map6();
    //} else if (map == map7) {
    //  map7();
    //} else if (map == map8) {
    //  map8();
    //} else if (map == map9) {
    //  map9();
    //} else if (map == map10) {
    //  map10();
    //} else if (map == map11) {
    //  map11();
    //} else if (map == map12) {
    //  map12();
    //} else if (map == map13) {
    //  map13();
    //} else if (map == map14) {
    //  map14();
    //}
  }
}
