int tempo = 0;

//estados possíveis
final int esquerda = 0;
final int centro_1 = 1;
final int centro_2 = 2;
final int direita = 3;

final int parado = 0;
final int martelando = 1;

//estados iniciais
int estado = esquerda;
int estadoMario = parado;

PImage gEsquerda, gCentro, gDireita, imgPadrao, imgMartelando;

void setup() {
  size(600, 600);

  imgPadrao = loadImage("mario-padrao.png");
  imgMartelando = loadImage("mario-martelando.png");
  gEsquerda = loadImage("gEsquerda.png");
  gCentro = loadImage("gCentro.png");
  gDireita = loadImage("gDireita.png");
}

void draw() {
  mostraGangorra(estado);
  mostraMario(estadoMario);
  MEF_1();
  MEF_2();
}

void MEF_1() {
  if (estado == esquerda) {
    tempo++;
    if (tempo >= 60) {
      tempo = 0;
      estado = centro_1;
    }
  }
  if (estado == centro_1) {
    tempo++;
    if (tempo >= 60) {
      tempo = 0;
      estado = direita;
    }
  }
  if (estado == direita) {
    tempo++;
    if (tempo >= 60) {
      tempo = 0;
      estado = centro_2;
    }
  }
  if (estado == centro_2) {
    tempo++;
    if (tempo >= 60) {
      tempo = 0;
      estado = esquerda;
    }
  }
}

void MEF_2() {
  if (estadoMario == parado) {
    if (keyPressed) {
      if (key == ' ') {
        estadoMario = martelando;
      }
    }
  }
  if (estadoMario == martelando) {
    tempo++;
    if (tempo >= 60) {
      tempo = 0;
      estadoMario = parado;
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

void mostraMario(int estado) {
  background(255);
  if (estado == parado) {
    image(imgPadrao, 150, 150);
  } else if (estado == martelando) {
    image(imgMartelando, 150, 150);
  }
}
