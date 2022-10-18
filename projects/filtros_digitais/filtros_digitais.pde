PImage img;
PImage imgSample = createImage(320, 240, RGB);

float limiar;

void setup() {
  size(960, 480);
  limiar = 0.4;

  img = loadImage("final-fantasy300.jpg");

  //original
  image(img, 0, 0);

  //ruído
  ruído();
  image(imgSample, 320, 0);
  
  //tons de cinza
  imgSample.filter(GRAY);
  image(imgSample, 640, 0);
  
  //vermelho
  imgSample.filter(GRAY);
  cores(1);
  image(imgSample, 0, 240);

  //amarelo
  //cores(4);
  //image(imgSample, 640, 0);
}

void ruído() {
  color cor;
  float sorteio;
  for (int x = 0; x < 320; x++) {
    for (int y = 0; y < 240; y++) {
      cor = img.get(x, y);
      sorteio = random(1);
      if (sorteio > limiar)
        imgSample.set(x, y, cor);
      else {
        color ruido = color(random(256), random(256), random(256));
        imgSample.set(x, y, ruido);
      }
    }
  }
}

void cores(int cor) {
  color cor0, cor1;
  float r;
  float g;
  float b;
  for (int x=0; x<320; x++) {
    for (int y = 0; y<240; y++) {
      cor0 = img.get(x, y);
      r = red(cor0);
      g = green(cor0);
      b = blue(cor0);
      if (cor == 1) {
        cor1 = color(r, 0, 0);
        imgSample.set(x, y, cor1);
      } else if (cor == 2) {
        cor1 = color(0, g, 0);
        imgSample.set(x, y, cor1);
      } else if (cor == 3) {
        cor1 = color(0, 0, b);
        imgSample.set(x, y, cor1);
      } else if (cor == 4) {
        cor1 = color(r, g, 0);
        imgSample.set(x, y, cor1);
      }
    }
  }
}
