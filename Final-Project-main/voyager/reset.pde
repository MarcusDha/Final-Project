
void reset() {
  if (out) {
    shipVX=0;
    shipVY=0;
    rcount+=1;
    fill(0, 0, 0, rc);
    noStroke();
    rect(width/2, height/2, width, height);

    if (rcount<=50) {
      if (rc<=255) {
        rc+=15;
      }
    } else if (rcount>=60 && rcount<=100) {
      if (rc>=0) {
        //reinitialize variables
        rx=0;
        fuel=100;
        gass=true;
        shipX=50;
        shipY=height/2;
        shipVX=0;
        shipVY=0;
        rc-=15;
      }
    }
    if (rcount==100) {
      out=false;
      rcount=0;
    }
  }
}

void newlevel() {
  if (cleared) {
    shipVX=0;
    shipVY=0;
    rcount+=1;
    fill(0, 0, 0, rc);
    noStroke();
    rect(width/2, height/2, width, height);

    if (rcount<=50) {
      if (rc<=255) {
        rc+=15;
      }
    } else if (rcount>=60 && rcount<=100) {
      if (rc>=0) {
        rc-=15;
      }
    }
    if (rcount==60) {
      //reinitialize
      rx=0;
      fuel=100;
      gass=true;
      shipX=50;
      shipY=height/2;
      shipVX=0;
      shipVY=0;
      pt.clear();
      plinit(4);
      item = true;
    }
    if (rcount==100) {
      item=true;
      cleared=false;
      rcount=0;
    }
  }
}
