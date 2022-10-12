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
