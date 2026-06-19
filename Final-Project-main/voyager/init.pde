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

  //btn(x, y, size, size when hovering, size, size when clicked)
  b.add(new btn(width/2, height/2+150, 50, game, "game"));
  b.add(new btn(width/4, height/2+150, 50, guide, "guide"));
  b.add(new btn(width/2 + width/4, height/2+150, 50, options, "options"));
  b.add(new btn(width/4 + width/8, height/2 + 300, 50, parts, "items"));
  b.add(new btn(width/2 + width/8, height/2 + 300, 50, story, "story"));

  d.add(new btn(width/2, height/2+300, 50, menu, "continue"));
  d.add(new btn(width/2, height/2+300, 50, menu, "continue"));

  //ship init
  accel=0.06;
  shipX = 50;
  shipY = height/2;

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
  rw=new float[n];
  rh=new float[n];
  rs=new float[n];
  for (int i = 0; i < n; i++) {

    rw[i]=random(width);
    rh[i]=random(height);
    rs[i]=random(100, 300);

    //planet distance spaghetti

    //planet-planet
    if (dist(rw[0], rh[0], rw[1], rh[1])<=(rs[0]+rs[1])/2) {
      rw[0]-=rs[0]+rs[1];
    }
    if (dist(rw[0], rh[0], rw[3], rh[3])<=(rs[3]+rs[0])/2) {
      rw[0]-=rs[3]+rs[0];
    }
    if (dist(rw[2], rh[2], rw[0], rh[0])<=(rs[2]+rs[0])/2) {
      rw[2]-=rs[2]+rs[0];
    }
    if (dist(rw[1], rh[1], rw[2], rh[2])<=(rs[1]+rs[2])/2) {
      rw[1]+=rs[1]+rs[2];
    }
    if (dist(rw[1], rh[1], rw[3], rh[3])<=(rs[1]+rs[3])/2) {
      rw[1]+=rs[1]+rs[3];
    }
    if (dist(rw[3], rh[3], rw[2], rh[2])<=(rs[3]+rs[2])/2) {
      rw[3]+=rs[3]+rs[2];
    }

    //planet-item
    if (dist(rw[0], rh[0], width/2+width/4, height/2)<=(rs[0]+rs[1])/2) {
      rw[0]-=random(300, 400);
    }
    if (dist(rw[0], rh[0], width/2+width/4, height/2)<=(rs[3]+rs[0])/2) {
      rw[0]-=random(300, 400);
    }
    if (dist(rw[2], rh[2], width/2+width/4, height/2)<=(rs[2]+rs[0])/2) {
      rw[2]-=random(300, 400);
    }
    if (dist(rw[1], rh[1], width/2+width/4, height/2)<=(rs[1]+rs[2])/2) {
      rw[1]-=random(300, 400);
    }
    if (dist(rw[1], rh[1], width/2+width/4, height/2)<=(rs[1]+rs[3])/2) {
      rw[1]-=random(300, 400);
    }
    if (dist(rw[3], rh[3], width/2+width/4, height/2)<=(rs[3]+rs[2])/2) {
      rw[3]-=random(300, 400);
    }

    //planet-fuel
    if (dist(rw[0], rh[0], width+400, height+600)<=(rs[0]+rs[1])/2) {
      rw[0]-=random(300, 400);
    }
    if (dist(rw[0], rh[0], width+400, height+600)<=(rs[3]+rs[0])/2) {
      rw[0]-=random(300, 400);
    }
    if (dist(rw[2], rh[2], width+400, height+600)<=(rs[2]+rs[0])/2) {
      rw[2]-=random(300, 400);
    }
    if (dist(rw[1], rh[1], width+400, height+600)<=(rs[1]+rs[2])/2) {
      rw[1]-=random(300, 400);
    }
    if (dist(rw[1], rh[1], width+400, height+600)<=(rs[1]+rs[3])/2) {
      rw[1]-=random(300, 400);
    }
    if (dist(rw[3], rh[3], width+400, height+600)<=(rs[3]+rs[2])/2) {
      rw[3]-=random(300, 400);
    }

    pt.add(new planet(rw[i], rh[i], rs[i], random(-1, 1)));
  }
}
