void mostraChar() {
  if (estadoMapa != batalha) {
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
    } else {
      image(gif1[0], x, y);
      }
  } else {
    fill(0);
    rect(450, 150, 100, 100);
  }
}

void mostraTiamat() {
  fill(0);
  rect(50, 100, 200, 200);
}

void menu_batalha() {
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
    if (y>576) {
      estadoMapa = mapa3;
      y = 0;
    }
  } else if (estadoMapa == mapa2) {
    if (x<0) {
      estadoMapa = mapa1;
      x = 576;
    }
  }
  if (estadoMapa == mapa3) {
    if (y<0) {
      estadoMapa = mapa1;
      y = 576;
    }
    if (evento) {
      if (x > 40 && x < 80 && y > 260 && y < 310) {
        estadoMapa = batalha;
      }
    }
  }
}

int ataque(int forca, int defesa) {
  int dano = forca - defesa;
  return dano;
}

void resolucao() {
  fill(0);
  text("Vitória", 280, height/2);
  text("Pressione enter para continuar", 175, 340);
}

void keyReleased() {
  andar = false;
}

void mousePressed() {
  if (mouseX > 160 && mouseX < 290) {
    if (mouseY > 460 && mouseY < 490) {
      sword.play();
      vidaTiamat -= ataque(25, 0);
      println(vidaTiamat);
    }
  }
}

void colisao() {
  if (estadoMapa == mapa1) {
    if (y < 192) {
      y = 192;
    } else if (x < 144) {
      x = 144;
    } else if ( y > 490 && x < 384) {
      if (keyCode == DOWN) {
        y = 490;
      } else if (keyCode == LEFT) {
        x = 384;
      }
    } else if ( x < 244) {
      x = 244;
    } else if ( x > 244 && x < 384 && y < 480) {
      if (keyCode == RIGHT) {
        x = 240;
      } else if (keyCode == UP) {
        y = 480;
      } else if (keyCode == LEFT) {
        x = 384;
      }
    } else if (x > 196 && x < 288 && y < 384) {
      y = 384;
    } else if (x > 390 && y > 196 && y < 480) {
      if (keyCode == RIGHT) {
        x = 390;
      } else if (keyCode == DOWN) {
        y = 196;
      } else if (keyCode == UP) {
        y = 480;
      }
    } else if (x > 390 && y > 490) {
      if (keyCode == RIGHT) {
        x = 390;
      } else if (keyCode == DOWN) {
        y = 490;
      }
    }
  } else if (estadoMapa == mapa2) {
    if (y < 192) {
      y = 192;
    } else if ( y > 490) {
      y = 490;
    } else if (x > 480) {
      x = 480;
    } else if (y > 192 && y < 480 && x < 192) {
      if (keyCode == DOWN) {
        y = 192;
      } else if (keyCode == LEFT) {
        x = 192;
      } else if (keyCode == UP) {
        y = 480;
      }
    } else if (x > 192 && y < 288) {
      if (keyCode == RIGHT) {
        x = 192;
      } else if (keyCode == UP) {
        y = 288;
      }
    } else if ( x > 340 && y < 480) {
      if (keyCode == RIGHT) {
        x = 340;
      } else if (keyCode == UP) {
        y = 480;
      }
    } else if (x < 332 && y > 288 && y < 480) {
      if ( keyCode == DOWN) {
        y = 288;
      } else if (keyCode == LEFT) {
        x = 332;
      } else if (keyCode == UP) {
        y = 480;
      }
    }
  } else if (estadoMapa == mapa3) {
  }
}
