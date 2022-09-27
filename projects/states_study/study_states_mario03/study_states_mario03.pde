int tempoParado = 0;
int tempoMartelando = 0;
int tempoPulando = 0;

//imagens
PImage imgPadrao, imgMartelando, imgPulando;

//configuracao inicial
void setup() {
  size(600, 600);
  imgPadrao = loadImage("mario-padrao.png");
  imgMartelando = loadImage("mario-martelando.png");
  imgPulando = loadImage("mario-pulando.png");
}

//estados possiveis
final int parado = 0;
final int martelando = 1;
final int pulando = 2;

//estado inicial
int estadoMario = parado;

void draw() {
  mostraMario(estadoMario);
  MEF();
  println(estadoMario, tempoParado);
}

// Máquina de Estado Finitos
void MEF() {
  //parado => martelando
  if (estadoMario == parado) {
    if (keyPressed) {
      if (key == ' ') {
        estadoMario = martelando;
      }
    }
  }
  //martelando => parado
  if (estadoMario == martelando) {
    tempoMartelando++;
    if (tempoMartelando >= 60) {
      tempoMartelando = 0;
      estadoMario = parado;
    }
  }
  //parado => pulando
  if (estadoMario == parado) {
    if (keyPressed) {
      if (keyCode == UP) {
        estadoMario = pulando;
      }
    }
  }
  //pulando => parado
  if (estadoMario == pulando) {
    tempoPulando++;
    if (tempoPulando >= 60) {
      tempoPulando = 0;
      estadoMario = parado;
    }
  }
}

//representacao grafica
void mostraMario(int estado) {
  background(255);
  if (estado == parado) {
    image(imgPadrao, 150, 150);
  } else if (estado == martelando) {
    image(imgMartelando, 150, 150);
  } else if (estado == pulando) {
    image(imgPulando, 150, 100);
  }
}
