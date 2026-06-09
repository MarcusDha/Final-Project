void init() {
    
  //font setup
  spacebar = createFont("SPACEBAR.ttf", 100);
  spaceship = loadImage("R.png");

  //btn(x, y, size, size when hovering, size, size when clicked)
  b.add(new btn(width/2, height/2+200, 50, game, "game"));
  b.add(new btn(width/4, height/2+200, 50, guide, "guide"));
  b.add(new btn(width/2 + width/4, height/2+200, 50, options, "options"));

  //stars code
  for (int i = 0; i < 750; i++) {
    s.add(new stars(random(width), random(height), random(4)));
  }

  //minim
  minim = new Minim(this);
  music = minim.loadFile("the_mountain.mp3");
  gas = minim.loadFile("water-splash.wav");
  ship = minim.loadFile("space-ship.wav");
  click = minim.loadFile("sci-fi-click.wav");
  
  
}
