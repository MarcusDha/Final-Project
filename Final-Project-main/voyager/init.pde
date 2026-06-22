float[] ran;
void init() {

  //font setup
  spacebar = createFont("SPACEBAR.ttf", 100);

  //image setup
  spaceship = loadImage("R.png");
  can = loadImage("can-removebg-preview.png");
  antenna = loadImage("antenna.png");
  pl1 = loadImage("planet.png");
  pl2 = loadImage("neptune.png");
  space = loadImage("background.png");
  voyager = loadImage("voyager.png");

  //btn(x, y, size, size when hovering, size, size when clicked)
  b.add(new btn(width/2, height/2+150, 50, game, "game"));
  b.add(new btn(width/4, height/2+150, 50, guide, "guide"));
  b.add(new btn(width/2 + width/4, height/2+150, 50, options, "options"));
  b.add(new btn(width/4 + width/8, height/2 + 300, 50, parts, "items"));
  b.add(new btn(width/2 + width/8, height/2 + 300, 50, story, "story"));
  
  d.add(new btn(width/2, height/2+350, 50, menu, "continue"));
  d.add(new btn(width/2, height/2+350, 50, menu, "continue"));

  //ship init
  accel=0.06;
  shipX = 50;
  shipY = height/2;

  //planet init
  plinit(4);

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
}

void plinit(int n) {
  //planet init;
  rw=new float[n];
  rh=new float[n];
  rs=new float[n];
  for (int i = 0; i < n; i++) {

    rw[i]=random(width);
    rh[i]=random(height);
    rs[i]=random(100, 300);

    boolean overlap = false;
    for (int j = 0; j < i; j++) {
      if (dist(rw[i], rh[i], rw[j], rh[j]) <= (rs[i] + rs[j])/2) {
        overlap = true;
        break;
      }
    }
    if (overlap) {
      rw[i]=random(width);
      rh[i]=random(height);
    }

    if (dist(rw[i],rh[i],gasX,gasY)<=(gasD+rs[i])/2){
      rw[i]=random(width);
      rh[i]=random(height);
    }

    pt.add(new planet(rw[i], rh[i], rs[i], random(-1, 1)));
  }
}
