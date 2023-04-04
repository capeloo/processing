PImage cenario, ufo;
int [] posX = new int[30];
int [] posY = new int[30];
int cont, rX, rY;
int w = 50;
int h = 50;

void setup() {
  size(800, 600);
  cenario = loadImage("data/noturno.png");
  ufo = loadImage("data/ufo.png");
}

int funcX() {
  int somaX = 0;
  for (int i=0; i<30; i++)
    somaX = somaX + posX[i];
  return int(somaX/30);
}

int funcY() {
  int somaY = 0;
  for (int i=0; i<30; i++)
    somaY = somaY + posY[i];
  return int(somaY/30);
}

void draw() {
  background(0);
  image(cenario, 0, 0);
  if (frameCount%50 == 0) {
    rX = int(random(0, width-w));
    rY = int(random(0, height-h));
  }
  
  posX[cont % 30] = rX;
  posY[cont % 30] = rY;
  ufo.resize(150, 150);
  image(ufo, funcX(), funcY());
  cont++;
}
