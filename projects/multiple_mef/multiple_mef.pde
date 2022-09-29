int tempoMario = 0;
int tempoGangorra = 0;

PImage gEsquerda, gCentro, gDireita, imgPadrao, imgMartelando;

//configurações gerais
void setup() {
  size(800, 600);

  imgPadrao = loadImage("mario-padrao.png");
  imgMartelando = loadImage("mario-martelando.png");
  gEsquerda = loadImage("gEsquerda.png");
  gCentro = loadImage("gCentro.png");
  gDireita = loadImage("gDireita.png");
}

//estados possíveis
final int esquerda = 0;
final int centro_1 = 1;
final int centro_2 = 2;
final int direita = 3;

final int parado = 0;
final int martelando = 1;

//estados iniciais
int estadoGangorra = esquerda;
int estadoMario = parado;

void draw() {
  background(255);
  mostraGangorra(estadoGangorra);
  mostraMario(estadoMario);
  MEF_Gangorra();
  MEF_Mario();
}

//máquinas de estados finitos
void MEF_Gangorra() {
  if (estadoGangorra == esquerda) {
    tempoGangorra++;
    if (tempoGangorra >= 60) {
      tempoGangorra = 0;
      estadoGangorra = centro_1;
    }
  }
  if (estadoGangorra == centro_1) {
    tempoGangorra++;
    if (tempoGangorra >= 60) {
      tempoGangorra = 0;
      estadoGangorra = direita;
    }
  }
  if (estadoGangorra == direita) {
    tempoGangorra++;
    if (tempoGangorra >= 60) {
      tempoGangorra = 0;
      estadoGangorra = centro_2;
    }
  }
  if (estadoGangorra == centro_2) {
    tempoGangorra++;
    if (tempoGangorra >= 60) {
      tempoGangorra = 0;
      estadoGangorra = esquerda;
    }
  }
}

void MEF_Mario() {
  if (estadoMario == parado) {
    if (keyPressed) {
      if (key == ' ') {
        estadoMario = martelando;
      }
    }
  }
  if (estadoMario == martelando) {
    tempoMario++;
    if (tempoMario >= 60) {
      tempoMario = 0;
      estadoMario = parado;
    }
  }
}

//representação gráfica
void mostraGangorra(int estado) {
  if (estado == esquerda) {
    image(gEsquerda, 60, 235);
  } else if (estado == centro_1) {
    image(gCentro, 60, 235);
  } else if (estado == direita) {
    image(gDireita, 60, 235);
  } else if (estado == centro_2) {
    image(gCentro, 60, 235);
  }
}

void mostraMario(int estado) {
  if (estado == parado) {
    image(imgPadrao, 470, 150);
  } else if (estado == martelando) {
    image(imgMartelando, 470, 150);
  }
}
