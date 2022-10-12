void jogo_mef() {
  if (estado == telaInicial) {
    logo.resize(400, 200);
    image(logo, 105, 100);
    fill(0);
    text("-  click to start  -", 230, 400);
    if (!prelude.isPlaying()) {
      prelude.play();
    }
    if (mousePressed) {
      estado = mapa;
      prelude.stop();
    }
  }
  if (estado == mapa) {
    mostraMapa();
    if (!overworld.isPlaying()) {
      overworld.play();
    }
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
    overworld.stop();
    if (!battle.isPlaying()) {
      battle.play();
    }
    batalha();
  }
  if (estado == resolucao) {
    battle.stop();
    if (!victory.isPlaying()) {
      victory.play();
    }
    resolucao();
    if (keyCode == ENTER) {
      victory.stop();
      estado = mapa;
    }
  }
}
