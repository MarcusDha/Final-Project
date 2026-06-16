class stars{
    float x,y,s;
    float c = random(0,255);
    stars(float x, float y, float s) {
        this.x = x;
        this.y = y;
        this.s = s;
    }
    
    void display() {
        fill(c);
        noStroke();
        push();
        translate((-shipX*0.5)+width/2, (-shipY*0.5)+height/2);
        circle(x, y, s);
        pop();
    }

    void move() {
        y+=s/2;
        if (y > height*2) {
            y = -height/3;
            x = random(-width/2, width*1.5);
            c=random(0,255);
        }
    }
}
