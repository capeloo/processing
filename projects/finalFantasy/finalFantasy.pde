int x = 0;
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
int tempoDano = 0;
int vidaTiamat = 1000;

//estados possíveis
int telaInicial = 0;
int mapa = 1;
int batalha = 2;
int resolucao = 3;

int atacar = 0;
int esperar = 1;


//estados iniciais
int estado = telaInicial;
int estadoChar = esperar;

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

void jogo_mef() {
  if (estado == telaInicial) {
    fill(0);
    text("Tela Inicial", 260, height/2);
    if (mousePressed) {
      estado = mapa;
    }
  }
  if (estado == mapa) {
    mostraMapa();
    if (eventoFinalizado == true) {
      fill(0);
      stroke(255);
      rect(500, 500, 100, 100);
    }
    char_mef();
    colisao();
    if (eventoFinalizado == false) {
      if (evento == true) {
        estado = batalha;
      }
    }
  }
  if (estado == batalha) {
    batalha();
  }
  if (estado == resolucao) {
    resolucao();
    if (keyCode == ENTER) {
        estado = mapa;
      }
    }
  }

void mostraMapa() {
  for (int i=0; i<6; i++) {
    for (int j=0; j<6; j++) {
      switch(m[j][i]) {
      case 0:
        fill(0);
        stroke(255);
        rect(i*100, j*100, 100, 100);
        break;
      case 1:
        fill(255);
        stroke(0);
        rect(i*100, j*100, 100, 100);
        break;
      }
    }
  }
}

void char_mef() {
  if (estado == mapa) {
    fill(210);
    rect(x, y, 100, 100);
    if (andar) {
      if (keyPressed) {
        if (keyCode == RIGHT) {
          x += 100;
          andar = false;
        } else if (keyCode == LEFT) {
          x -= 100;
          andar = false;
        } else if (keyCode == UP) {
          y -= 100;
          andar = false;
        } else if (keyCode == DOWN) {
          y+= 100;
          andar = false;
        }
      }
    }
    if (andar == false) {
      tempo++;
      if (tempo == 20) {
        tempo = 0;
        andar = true;
      }
    }
    if (x == 500 && y == 500) {
      evento = true;
    }
  }
}

void colisao() {
  if (x < 0) {
    x = 0;
  } else if (x > 500) {
    x = 500;
  }
  if (y < 0) {
    y = 0;
  } else if (y > 500) {
    y = 500;
  }
}

void batalha() {
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
  }
  fill(0);
  rect(0, 500, 600, 100);
  stroke(255);
  rect(0, 500, 150, 100);
  fill(255);
  text("Tiamat", 10, 530);
  fill(0);
  rect(150, 450, 150, 150);
  rect(160, 460, 130, 30);
  fill(255);
  text("Attack", 197, 480);
  fill(0);
  rect(300, 500, 300, 100);
  fill(255);
  text("Char", 320, 530);
  text( vidaChar + "/100", 420, 530);
  text(manaChar, 550, 530);
  fill(c[0], c[1], c[2]);
  rect(50, 100, 200, 200);
  if (mousePressed) {
    if (mouseX > 160 && mouseX < 290) {
      if (mouseY > 460 && mouseY < 490) {
        vidaTiamat -= ataque(25, 0);
        estadoChar= atacar;
        atingido = true;
        println(vidaTiamat);
      }
    }
  }
  if (vidaTiamat == 0) {
    eventoFinalizado = true;
    estado = resolucao;
  }
  if (atingido == true) {
    c[0] = 255;
    tempoDano++;
  }
  if (tempoDano == 20) {
    c[0] = 0;
    tempoDano = 0;
    atingido = false;
  }
}

void resolucao() {
  fill(0);
  text("Vitória", 265, height/2);
  text("Pressione enter para continuar", 145, 340);
}

int ataque(int forca, int defesa) {
  int dano = forca - defesa;
  return dano;
}
