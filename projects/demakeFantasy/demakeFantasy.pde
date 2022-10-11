int x = 0; //<>//
int y = 0;
int [] c = {0, 0, 0};
boolean andar = true;
boolean evento = false;
boolean eventoFinalizado = false;
int tempo = 0;
int vidaChar = 100;
int manaChar = 50;
int defesa = 0;
boolean atingido = false;
int vidaTiamat = 200;
boolean fimDoTurno = false;
boolean atacou = false;

//estados possíveis
int telaInicial = 0;
int mapa = 1;
int batalha = 2;
int resolucao = 3;

int atacar = 0;
int esperar = 1;
int batalhar = 2;
int atacado = 3;

int tiamat_atacar = 0;
int tiamat_esperar = 1;


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
}

void draw() {
  background(255);
  jogo_mef();
}

void batalha() {

  //Char mef batalha
  if (estadoChar == esperar) {
    fill(0);
    rect(450, 150, 100, 100);
  } else if (estadoChar == atacar) {
    fill(0);
    rect(430, 150, 100, 100);
    tempo++;
    if (tempo == 20) {
      estadoChar = esperar;
      tempo = 0;
    }
  } else if (estadoChar == atacado) {
    fill(255, 0, 0);
    rect(450, 150, 100, 100);
    tempo++;
    if (tempo == 20) {
      estadoChar = esperar;
      tempo = 0;
    }
  }

  //vitoria
  if (vidaTiamat == 0) {
    eventoFinalizado = true;
    estado = resolucao;
  }

  //menu
  menu_batalha();

  //tiamat mef
  tiamat_mef();
}

void tiamat_mef() {
  if (estadoTiamat == esperar) {
    fill(0);
    rect(50, 100, 200, 200);
  } else if (estadoTiamat == atacar) {
    fill(0);
    rect(70, 100, 200, 200);
    tempo++;
    if (tempo == 20) {
      tempo = 0;
      estadoTiamat = esperar;
    }
  } else if (estadoTiamat == atacado) {
    fill(255, 0, 0);
    rect(50, 100, 200, 200);
    tempo++;
    if (tempo == 20) {
      tempo = 0; 
      estadoTiamat = esperar;
    }
  }
  if (tempo == 20) {
    if (fimDoTurno) {
      vidaChar -= ataque(30, 10);
      estadoTiamat = atacar;
      estadoChar = atacado;
      fimDoTurno = false;
    }
  }
}

void mousePressed() {
  if (mouseX > 160 && mouseX < 290) {
    if (mouseY > 460 && mouseY < 490) {
      vidaTiamat -= ataque(25, 0);
      estadoChar = atacar;
      estadoTiamat = atacado;
      fimDoTurno = true;
      tempo++;
      println(vidaTiamat);
    }
  }
}
