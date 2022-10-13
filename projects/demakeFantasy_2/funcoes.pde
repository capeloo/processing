void mostraChar() {
  fill(210);
  rect(x, y, 48, 48);
}

void movimentoChar() {
  if (andar) {
    if (keyPressed) {
      if (keyCode == RIGHT) {
        x += 48;
        andar = false;
      } else if (keyCode == LEFT) {
        x -= 48;
        andar = false;
      } else if (keyCode == UP) {
        y -= 48;
        andar = false;
      } else if (keyCode == DOWN) {
        y+= 48;
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
}

void transicaoDeMapa() {
  if (estadoMapa == mapa1) {
    if (x>576) {
      estadoMapa = mapa2;
      x = 0;
    }
  } else if (estadoMapa == mapa2) {
    if (x<0) {
      estadoMapa = mapa1;
      x = 576;
    }
  }
}
