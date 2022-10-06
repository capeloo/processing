PImage imgGrama, imgMuro, imgSombra;

int [][] mapa = {
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 0, 0}, 
  {0, 0, 1, 0, 0, 1, 0, 0}, 
  {0, 0, 1, 0, 0, 1, 0, 0}, 
  {0, 0, 1, 1, 1, 1, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
  {0, 0, 0, 0, 0, 0, 0, 0}, 
};

void setup() {
  size(800, 800);
  imgGrama = loadImage("grama.png");
  imgMuro = loadImage("muro.png");
  mostraMapa();
}

void mostraMapa() {
  for (int i=0; i<8; i++) {
    for (int j=0; j<8; j++) {
      switch(mapa[j][i]) {
      case 0:
        image(imgGrama, i*100, j*80);
        break;
      case 1:
        image(imgMuro, i*100, j*80);
        break;
      }
    }
  }
}
