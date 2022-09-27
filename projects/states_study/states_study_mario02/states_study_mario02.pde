int tempoParado = 0;
int tempoMartelando = 0;

//imagens
PImage imgPadrao, imgMartelando;

//configuracao inicial
void setup() {
  size(600, 600);
  imgPadrao = loadImage("mario-padrao.png");
  imgMartelando = loadImage("mario-martelando.png");
}

//estados possiveis
final int parado = 0;
final int martelando = 1;

//estado inicial
int estadoMario = parado;

void draw() {
  mostraMario(estadoMario);
  MEF();
  println(estadoMario, tempoParado);
}

// Máquina de Estado Finitos
void MEF() {
  // parado => martelando
    if (estadoMario == parado) {
      tempoParado++;
      if (tempoParado >= 30) {
        tempoParado = 0;
        estadoMario = martelando;
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
}

//representacao grafica
void mostraMario(int estado) {
  background(255);
  if (estado == parado) {
    image(imgPadrao, 150, 150);
  } else if (estado == martelando) {
    image(imgMartelando, 150, 150);
  }
}
