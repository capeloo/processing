import processing.sound.*; //<>//
SoundFile prelude;
SoundFile overworld;
SoundFile battle;
SoundFile victory;
SoundFile sword;

PImage logo;

int x = 0;
int y = 0;
int tempo = 0;
int vidaChar = 100;
int manaChar = 50;
int vidaTiamat = 200;

boolean andar = true;
boolean evento = false;
boolean eventoFinalizado = false;
boolean fimDoTurno = false;

//estados possíveis
int telaInicial = 0;
int mapa = 1;
int batalha = 2;
int resolucao = 3;

int atacar = 0;
int esperar = 1;
int batalhar = 2;
int atacado = 3;

//estados iniciais
int estado = telaInicial;
int estadoChar = esperar;
int estadoTiamat = esperar;


int [][] m = {
  {0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 1},
};

void setup() {
  size(600, 600);
  textSize(20);
  prelude = new SoundFile(this, "assets/prelude.wav");
  overworld = new SoundFile(this, "assets/overworld-theme.wav");
  battle = new SoundFile(this, "assets/battle-theme.wav");
  victory = new SoundFile(this, "assets/victory-theme.wav");
  sword = new SoundFile(this, "assets/sword-sound-effect.wav");
  logo = loadImage("assets/ff-logo.jpg");
}

void draw() {
  background(255);
  jogo_mef();
}
