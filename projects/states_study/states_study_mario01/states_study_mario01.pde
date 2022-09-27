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

//loop principal
void draw() {
  mostraMario(estadoMario);
  MEF();
  println(estadoMario);
}

//maquina de estados finitos
void MEF() {
  if (keyPressed) {
    if (key==' ') {
      estadoMario = martelando;
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
