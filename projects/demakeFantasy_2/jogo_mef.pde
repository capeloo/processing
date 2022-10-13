void jogo_mef() {
  if (estadoMapa == telaInicial) {
    logo.resize(400, 200);
    image(logo, 105, 100);
    fill(0);
    text("-  click to start  -", 230, 400);
    if (!prelude.isPlaying()) {
      prelude.play();
    }
    if (mousePressed) {
      estadoMapa = mapa1;
      prelude.stop();
    }
  }
  if (estadoMapa == mapa1) {
    mostraMapa(m1);
    char_mef();
    transicaoDeMapa();
    if (!village.isPlaying()) {
      village.play();
    }
  }
  if (estadoMapa == mapa2) {
    mostraMapa(m2);
    char_mef();
    transicaoDeMapa();
    if (!village.isPlaying()) {
      village.play();
    }
  }
  if (estadoMapa == mapa3) {
    mostraMapa(m3);
    char_mef();
    transicaoDeMapa();
    if (!village.isPlaying()) {
      village.play();
    }
  }
  if (estadoMapa == batalha) {
    village.stop();
    char_mef();
    mostraTiamat();
    menu_batalha();
    if (!battle.isPlaying()) {
      battle.play();
    }
    if (vidaTiamat == 0) {
      evento = false;
      sword.stop();
      estadoMapa = resolucao;
    }
  }
  if (estadoMapa == resolucao) {
    battle.stop();
    if (!victory.isPlaying()) {
      victory.play();
    }
    resolucao();
    if (keyCode == ENTER) {
      victory.stop();
      estadoMapa = mapa3;
    }
  }
}
