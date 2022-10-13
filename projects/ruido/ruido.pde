PImage imgOriginal;
PImage imgDestino = createImage(320, 240, RGB);
float limiar;

void setup() {
  size(640, 240);
  imgOriginal = loadImage("original.png");
  limiar = 0.3;
  processaImagem();
  image(imgOriginal, 0, 0);
  image(imgDestino, 320, 0);
}

void processaImagem() {
  color corOriginal;
  float sorteio;
  for (int x = 0; x < 320; x++) {
    for (int y = 0; y < 240; y++) {
      corOriginal = imgOriginal.get(x, y);
      sorteio = random(1);
      if (sorteio > limiar)
        imgDestino.set(x, y, corOriginal);
      else {
        color ruido = color(random(256), random(256), random(256));
        imgDestino.set(x, y, ruido);
      }
    }
  }
}
