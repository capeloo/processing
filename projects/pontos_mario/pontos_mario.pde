int tempoMario = 0;
int tempoMarioCopy = 0;
int tempoGangorra = 0;

boolean colidiu = false;
boolean colidiuCopy = false;
int pontos = 0;
int pontosCopy = 0;

PImage gEsquerda, gCentro, gDireita, imgPadrao, imgMartelando, imgPadraoCopy, imgMartelandoCopy;

//configurações gerais
void setup() {
  size(1000, 600);
  textSize(30);

  imgPadrao = loadImage("mario-padrao.png");
  imgMartelando = loadImage("mario-martelando.png");
  imgPadraoCopy = loadImage("mario-padrao-copy.png");
  imgMartelandoCopy = loadImage("mario-martelando-copy.png");
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
int estadoMarioCopy = parado;

void draw() {
  background(255);
  mostraGangorra(estadoGangorra);
  mostraMario(estadoMario);
  mostraMarioCopy(estadoMarioCopy);
  MEF_Gangorra();
  MEF_Mario();
  MEF_MarioCopy();
  colisao(estadoGangorra, estadoMario);
  colisaoCopy(estadoGangorra, estadoMarioCopy);
  pontuacao(pontos);
  pontuacaoCopy(pontosCopy);
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
    if (tempoMario >= 30) {
      tempoMario = 0;
      estadoMario = parado;
    }
  }
}

void MEF_MarioCopy() {
    if (estadoMarioCopy == parado) {
      tempoMarioCopy++;
      if (tempoMarioCopy >= 40) {
        tempoMarioCopy = 0;
        estadoMarioCopy = martelando;
      }
  }
  if (estadoMarioCopy == martelando) {
    tempoMarioCopy++;
    if (tempoMarioCopy >= 40) {
      tempoMarioCopy = 0;
      estadoMarioCopy = parado;
    }
  }
}

//representação gráfica
void mostraGangorra(int estado) {
  if (estado == esquerda) {
    image(gEsquerda, 310, 235);
  } else if (estado == centro_1) {
    image(gCentro, 310, 235);
  } else if (estado == direita) {
    image(gDireita, 310, 235);
  } else if (estado == centro_2) {
    image(gCentro, 310, 235);
  }
}

void mostraMario(int estado) {
  if (estado == parado) {
    image(imgPadrao, 700, 150);
  } else if (estado == martelando) {
    image(imgMartelando, 670, 150);
  }
}

void mostraMarioCopy(int estado) {
  if (estado == parado) {
    image(imgPadraoCopy, 10, 150);
  } else if (estado == martelando) {
    image(imgMartelandoCopy, 40, 150);
  }
}

void colisao(int estadoGangorra, int estadoMario) {
  if ( estadoGangorra == esquerda && estadoMario == martelando) {
    colidiu = true;
    if (colidiu == true) {
      pontos += 1;
    }
  }
}

void colisaoCopy(int estadoGangorra, int estadoMarioCopy) {
  if ( estadoGangorra == direita && estadoMarioCopy == martelando) {
    colidiuCopy = true;
    if (colidiuCopy == true) {
      pontosCopy += 1;
    }
  }
}

void pontuacao(int pontos) {
  fill(0);
  text("Pontos:", 780, 50);
  text(pontos, 890, 50);
}

void pontuacaoCopy(int pontosCopy) {
  fill(0);
  text("Pontos:", 90, 50);
  text(pontosCopy, 200, 50);
}
