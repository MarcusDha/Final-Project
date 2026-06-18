float timer = random(10, 100);
float meteorX =  random(50, width-50);
float meteorY = -100;

void meteors() {
  timer -= 1;
  if (timer < 0) {
    fill(255);
    circle(meteorX, meteorY, 50);
    meteorY += 10;

    if (meteorY > 800) {
      timer = random(100, 1000);
    }
  }
}
