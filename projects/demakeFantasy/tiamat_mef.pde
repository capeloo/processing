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
  if (fimDoTurno) {
    tempo++;
    if (tempo == 60) {
      tempo = 0;
      vidaChar -= ataque(20, 10);
      estadoTiamat = atacar;
      estadoChar = atacado;
      fimDoTurno = false;
    }
  }
}
