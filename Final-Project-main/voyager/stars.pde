class stars{
    float x;
    float y;
    float s;
    
    stars(float x, float y, float s) {
        this.x = x;
        this.y = y;
        this.s = s;
    }
    
    void display() {
        fill(255);
        noStroke();
        circle(x, y, s);
    }

    void move() {
        y+=s/2;
        if (y > height) {
            y = -s;
            x = random(width);
        }
    }
}