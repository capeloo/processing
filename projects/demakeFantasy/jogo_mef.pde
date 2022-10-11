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
