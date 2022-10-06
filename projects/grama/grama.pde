PImage imgGrama, imgMuro;

void setup() {
  size(800, 800);
  noStroke();
  imgGrama = loadImage("grama.png");
  imgMuro = loadImage("muro.png");
}

void draw() {
  for (int i = 0; i<8; i++) {
    for (int j = 0; j<8; j++) {
      image(imgGrama, i*100, j*80);
    }
  }
  for (int i = 2; i<6; i++) {
    for (int j = 2; j<6; j++) {
      image(imgMuro, i*100, j*80);
    }
  }
  for (int i = 3; i<5; i++) {
    for (int j = 3; j<5; j++) {
      image(imgGrama, i*100, j*70);
    }
  }
  image(imgMuro, 350, 100);
  fill(0,0,0,120);
  rect(350, 290, 100, 100,10);
}
