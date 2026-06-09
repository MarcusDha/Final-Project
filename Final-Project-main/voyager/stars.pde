class stars{
    float x;
    float y;
    float s;
    float c = random(0,255);
    stars(float x, float y, float s) {
        this.x = x;
        this.y = y;
        this.s = s;
    }
    
    void display() {
        fill(c);
        noStroke();
        circle(x, y, s);
    }

    void move() {
        y+=s/2;
        if (y > height) {
            y = -s;
            x = random(width);
            c=random(0,255);
        }
    }
}
