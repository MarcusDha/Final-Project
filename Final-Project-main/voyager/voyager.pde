import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer music, ship, gas, click;

ArrayList<btn> b = new ArrayList<btn>();
ArrayList<stars> s = new ArrayList<stars>();
int mode;
int offset = 0;

final int menu = 0;
final int game = 1;
final int options = 2;
final int items = 3;
final int guide = 4;

PFont spacebar;
color white = #FFFFFF;
color dGrey = #898484;
color lGrey = #D1CFCF;

void setup() {
  size (1024, 768);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
  //font setup
  spacebar = createFont("SPACEBAR.ttf",100);
  
  //btn(x, y, size, size when hovering, size, size when clicked)
  b.add(new btn(width/2, height/2+200,50,game,"game"));
  b.add(new btn(width/4, height/2+200,50,guide,"guide"));
  b.add(new btn(width/2 + width/4, height/2+200,50,options,"options"));
  
  //stars code
  for (int i = 0; i < 100; i++) {
    s.add(new stars(random(width), random(height), 4));
  }
  
  //minim
  minim = new Minim(this);
  music = minim.loadFile("the_mountain.mp3");
  gas = minim.loadFile("water-splash.wav");
  ship = minim.loadFile("space-ship.wav");
  click = minim.loadFile("sci-fi-click.wav");
}

void draw() {
  println(mouseX,mouseY);
  
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
