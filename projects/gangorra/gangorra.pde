int tempoEsquerda = 0;
int tempoCentro = 0;
int tempoDireita = 0;

final int esquerda = 0;
final int centro_1 = 1;
final int centro_2 = 2;
final int direita = 3;

int estado = esquerda;

PImage gEsquerda, gCentro, gDireita;

void setup() {
  size(600, 600);

  gEsquerda = loadImage("gEsquerda.png");
  gCentro = loadImage("gCentro.png");
  gDireita = loadImage("gDireita.png");
}

void draw() {
  mostraGangorra(estado);
  MEF();
}

void MEF() {
  if (estado == esquerda) {
    tempoEsquerda++;
    if (tempoEsquerda >= 60) {
      tempoEsquerda = 0;
      estado = centro_1;
    }
  }
  if (estado == centro_1) {
    tempoCentro++;
    if (tempoCentro >= 60) {
      tempoCentro = 0;
      estado = direita;
    }
  }
  if (estado == direita) {
    tempoDireita++;
    if (tempoDireita >= 60) {
      tempoDireita = 0;
      estado = centro_2;
    }
  }
  if (estado == centro_2) {
    tempoCentro++;
    if (tempoCentro >= 60) {
      tempoCentro = 0;
      estado = esquerda;
    }
  }
}

void mostraGangorra(int estado) {
  background(255);
  if (estado == esquerda) {
    image(gEsquerda, 100, 180);
  } else if (estado == centro_1) {
    image(gCentro, 100, 180);
  } else if (estado == direita) {
    image(gDireita, 100, 180);
  } else if (estado == centro_2) {
    image(gCentro, 100, 180);
  }
}
