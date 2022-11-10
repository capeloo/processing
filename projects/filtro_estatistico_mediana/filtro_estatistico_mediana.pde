String[] nomes = { "img01.png", "img02.png", "img03.png", "img04.png", 
  "img05.png", "img06.png", "img07.png"};

int[] cores = new int[7];
PImage[] imagens = new PImage[nomes.length];
PImage resultado = createImage(824, 548, RGB);

void setup() {
  size(824, 548);
  for (int i=0; i < nomes.length; i++) {
    String nm = nomes[i];
    imagens[i] = loadImage(nm);
  }
  for (int x=0; x<824; x++) {
    for (int y=0; y<548; y++) {
      for (int i=0; i < nomes.length; i++) {
        color cor = imagens[i].get(x, y);
        cores[i] = cor2Int(cor);
      }
      resultado.set(x, y, int2Cor(mediana(cores)));
    }
  }
  image(resultado, 0, 0);
}

int cor2Int (color cor) {
  float r = red(cor) * 65536;
  float g = green(cor) * 256;
  float b = blue(cor);
  return int(r + g + b);
}

color int2Cor (int cor) {
  int r = cor/65536;
  int g = (cor - r * 65536)/256;
  int b = cor - (r * 65536) - (g * 256);
  return color(r, g, b);
}

int mediana(int[] cores) {
  cores = sort(cores);
  int mediana = cores[7/2];
  return mediana;
}
