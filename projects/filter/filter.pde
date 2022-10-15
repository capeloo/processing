PImage img0, img1;

PImage imgOriginal;
PImage imgDestino = createImage(320, 240, RGB);

void setup() {
  size(960, 480);
  img0 = loadImage("original.png");
  img1 = loadImage("original.png");

  imgOriginal = loadImage("original.png");

  processaImagem(1);
  //image(imgOriginal, 640, 0);
  image(imgDestino, 320, 240);

  processaImagem(2);
  image(imgDestino, 640, 240);

  processaImagem(3);
  image(imgDestino, 640, 0);

  //normal
  image(img0, 0, 0);

  //negativo
  img0.filter(INVERT);
  image(img0, 0, 240);

  //cinza
  img1.filter(GRAY);
  image(img1, 320, 0);
}

void processaImagem(int cor) {
  color corOriginal, corDestino;
  float r;
  float g;
  float b;
  for (int x=0; x<320; x++) {
    for (int y = 0; y<240; y++) {
      corOriginal = imgOriginal.get(x, y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      if (cor == 1) {
        corDestino = color(r, 0, 0);
        imgDestino.set(x, y, corDestino);
      } else if (cor == 2) {
        corDestino = color(0, g, 0);
        imgDestino.set(x, y, corDestino);
      } else if (cor == 3) {
        corDestino = color(0, 0, b);
        imgDestino.set(x, y, corDestino);
      }
    }
  }
}
