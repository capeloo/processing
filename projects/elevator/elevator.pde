int x = 0;
int y = 390;
int tempo = 0;
boolean elevatorPit = false;

//estados possíveis
int terreo = 0;
int andar1 = 1;
int andar1_ = 2;
int andar2 = 3;
int block0 = 4;
int block1 = 5;
int block2 = 6;

//estado inicial
int estado = terreo;
int estadoBlock = block0;

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);
  desenhaMapa();
  desenhaBlock();
  MEF_elevator();
  MEF_block();
  pit();
  blockMovement();
}

void MEF_elevator() {
  if ( estado == terreo) {
    fill(200);
    rect(360, 340, 60, 80);
    tempo++;
    if (tempo >= 120) {
      estado = andar1;
      tempo = 0;
      if (elevatorPit == true) {
        if ( y == 390) {
          y = 300;
        }
      }
    }
  }
  if (estado == andar1) {
    fill(200);
    rect(360, 250, 60, 80);
    tempo++;
    if (tempo >= 120) {
      estado = andar2;
      tempo = 0;
      if (elevatorPit == true) {
        if (y == 300) {
          y = 210;
        }
      }
    }
  }
  if (estado == andar2) {
    fill(200);
    rect(360, 160, 60, 80);
    tempo++;
    if (tempo >= 120) {
      estado = andar1_;
      tempo = 0;
      if (elevatorPit == true) {
        if ( y == 210) {
          y = 300;
        }
      }
    }
  }
  if ( estado == andar1_) {
    fill(200);
    rect(360, 250, 60, 80);
    tempo++;
    if (tempo >= 120) {
      estado = terreo;
      tempo = 0;
      if (elevatorPit == true) {
        if (y == 300) {
          y = 390;
        }
      }
    }
  }
  if (estado == terreo) {
    fill(200);
    rect(360, 340, 60, 80);
    tempo++;
    if (tempo >= 120) {
      estado = andar1;
      tempo = 0;
      if (elevatorPit == true) {
        if (y == 390) {
          y = 300;
        }
      }
    }
  }
}

void MEF_block() {
  if (estadoBlock == block0 && estado == terreo) {
    if (elevatorPit == true) {
      estadoBlock = block1;
    }
  }
  if (estadoBlock == block1 && estado == andar1) {
    if (elevatorPit == true) {
      estadoBlock = block2;
    }
  }
  if (estadoBlock == block2 && estado == andar2) {
    if (elevatorPit == true) {
      estadoBlock = block1;
    }
  }
  if (estadoBlock == block1 && estado == andar1_) {
    if (elevatorPit == true) {
      estadoBlock = block0;
    }
  }
}

void pit() {
  if (x >= 360 && x < 420) {
    elevatorPit = true;
  } else {
    elevatorPit = false;
  }
}

void desenhaMapa() {
  rect(0, 150, 800, 280);
  fill(120);
  rect(0, 160, 800, 80);
  rect(0, 250, 800, 80);
  rect(0, 340, 800, 80);
  fill(0);
  rect(360, 160, 60, 80);
  rect(360, 250, 60, 80);
  rect(360, 340, 60, 80);
}

void desenhaBlock() {
  fill(255);
  rect(x, y, 30, 30);
}

void blockMovement() {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      x += 5;
      if (x >= width) {
        x = -40;
      }
    }
    if (keyCode == LEFT) {
      x -= 5;
      if ( x <= -40) {
        x = 800;
      }
    }
  }
}
