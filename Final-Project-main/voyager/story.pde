void story () {
  background(0);
  
  imageMode(CORNER);
  background(0);
  image(space,0,0,1600,800);
  imageMode(CENTER);

  for (stars star : s){
      star.move();
      star.display();
    }
    //paragraphs
    storyscreen();
    fill(255,0,0);
    text("Voyager one", width/2, height/2 - 350);
    textSize(10);
    text("on september fifth, nineteen ninety seven, nasa launched voyager one into space. its purpose was to observe and record its findings in the", width/2, height/2 - 275);
    text("solar system and deep space, mainly jupiter and saturn, and report its findings back to earth through its advanced technology. the voyagers", width/2, height/2 - 250);
    text("are made mostly of aluminum and other light materials and equipped with a twelve foot antenna dish. the voyager uses a radioactive material ", width/2, height/2 - 225);
    text("that converts heat into electricity which acts as a battery supply. voyager one holds the achievement for first spacecraft to ever visit", width/2, height/2 -200);
    text("jupiter and saturn. its innovative properties allows the voyager to send photos of recordings of its findings back to scientists on earth", width/2, height/2 - 175);
    text("for them to study. it also carries what is called the go;den record, a collection of remedies from earth like music tracks, languages", width/2, height/2 - 150);
    text("pictures, and sounds incase other life forms were to find the voyager. voyager one is currently twenty five billion kilometers from earth", width/2, height/2 - 125);
    
    textSize(25);
    text("voyager two", width/2, height /2 - 50);
    textSize(10);
    text("voyager two was launched on august twentieth, nineteen ninety seven, before voyager one. voyager two measures magnetic fields and radiations", width/2, height/2 +25);
    text("in deep space. like voyager one, voyager two was also expected to study the planets jupiter and saturn, but a astronomical event took place", width/2, height/2 + 50);
    text("during the adventure of voyager two. Due to the allignment of jupiter and saturn, the gravitational pull from the planets extended the trip", width/2, height/2 + 75);
    text("of voyager two, allowing it to go past the two planets and eventually reach uranus and neptune. this event was named the the grand tour, and", width/2, height/2 + 100);
    text("the next chance opportunity of a grand tour is estimated to be sometime near the year twenty one hundred fifty. after the voyager two finished", width/2, height/2 + 125);
    text("with the grand tour, it went on to explore interstellar space. the voyager two is currently roughly twenty one billion kilometers away from ", width/2, height/2 + 150);
    text("earth, and is travelling at about one hundred and four thousand kilometers an hour.", width/2, height/2 + 175);
    
    
    for (btn btn : d) {
    btn.move();
    btn.display();
  }
}

void storyClick () {
  for (btn btn : d) {
    btn.click();
  }
  
}
