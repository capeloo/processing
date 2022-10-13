void mostraChar() {
  image(gif1[0], x, y);
  if (andar) {
    if (keyCode == RIGHT) {
      image(gif4[frame], x, y);
    } else if (keyCode == LEFT) {
      image(gif3[frame], x, y);
    } else if (keyCode == DOWN) {
      image(gif1[frame], x, y);
    } else if (keyCode == UP) {
      image(gif2[frame], x, y);
    }
    if (frameCount % 20 == 0) {
      frame++;
    }
    if (frame == nFrames) frame = 0;
  }
}

void movimentoChar() {
  if (keyPressed) {
    andar = true;
    if (andar) {
      if (keyCode == RIGHT) {
        x+=3;
      } else if (keyCode == LEFT) {
        x-=3;
      } else if (keyCode == UP) {
        y-=3;
      } else if (keyCode == DOWN) {
        y+=3;
      }
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

void keyReleased() {
  andar = false;
}
