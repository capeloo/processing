int tInst = 0;
int vInst = 80;
int dInst = 0;
int aInst = -10;
int dInstMRU = 0;
int vInstMRU = 30;

void setup() {
  frameRate(8);
  size(600, 600);
}

void geraGrid() {
  for (int i = 0; i < 10; i++) {
    stroke(255);
    line(i*60, 0, i*60, 600);
    line(0, i*60, 600, i*60);
  }
}

int MRU(int v, int t) {
  int d;
  d = v * t;
  return d;
}

int MRUV(int v, int a, int t) {
  int d;
  d = v * t + a * t * t / 2;
  return(d);
}


void draw() {
  background(0);
  geraGrid();
  dInst = MRUV(vInst, aInst, tInst);
  dInstMRU = MRU(vInstMRU, tInst);
  println(tInst, dInst);
  circle(dInstMRU, 600-dInst, 10);
  tInst ++;
}
