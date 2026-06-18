float[] ran;
void init() {

  //font setup
  spacebar = createFont("SPACEBAR.ttf", 100);

  //picture setup
  spaceship = loadImage("R.png");
  can = loadImage("can-removebg-preview.png");
  antenna = loadImage("antenna.png");

  //btn(x, y, size, size when hovering, size, size when clicked)
  b.add(new btn(width/2, height/2+200, 50, game, "game"));
  b.add(new btn(width/4, height/2+200, 50, guide, "guide"));
  b.add(new btn(width/2 + width/4, height/2+200, 50, options, "options"));
  b.add(new btn(width/4 + width/8, height/2 + 400, 50,parts, "items"));
  d.add(new btn(width/2, height/2+400, 50, menu, "continue"));
  
  //ship init
  accel=0.06;

  //planet init
  for (int i = 0; i < 2; i++) {
    pt.add(new planet(random(width), random(height), random(100, 300)));
    
  }

  //stars init
  for (int i = 0; i < 750; i++) {
    s.add(new stars(random(-width/2, width*1.5), random(-height/2, height*1.5), random(4)));
  }

  //minim
  minim = new Minim(this);
  music = minim.loadFile("the_mountain.mp3");
  gas = minim.loadFile("water-splash.wav");
  ship = minim.loadFile("space-ship.wav");
  click = minim.loadFile("sci-fi-click.wav");

  shipX = width-(width/2);
  shipY = height-(height/2);
  
  
}
