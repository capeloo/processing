int b, c, d, e = 0;
int r = 50;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  desenhaWifi();
  eventX();
  eventY();
}

void desenhaWifi() {
  fill(b);
  strokeWeight(0);
  ellipse(0.5*width, 0.7*height, 0.5*r, 0.5*r);
  noFill();
  strokeWeight(25);
  stroke(c);  
  arc(0.5*width, 0.7*height, 2*r, 2*r, 5*PI/4, 7*PI/4);
  stroke(d);
  arc(0.5*width, 0.7*height, 4*r, 4*r, 5*PI/4, 7*PI/4);
  stroke(e);
  arc(0.5*width, 0.7*height, 6*r, 6*r, 5*PI/4, 7*PI/4);
}

void eventY() {
  if (mouseY > 0.25*height) {
    e = 220;
  } else { 
    e = 0;
  }
  if (mouseY > 0.375*height) {
    d = 180;
  } else {
    d = 0;
  }
  if (mouseY > 0.5*height) {
    c = 140;
  } else {
    c = 0;
  }
  if (mouseY > 0.625*height) {
    b = 100;
  } else {
    b = 0;
  }
}

void eventX() {
  r = mouseX/3;
  if(r > 120) r = 120;
  if(r < 50) r = 50;
}
