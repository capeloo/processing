String [] meses ={"Jan", "Fev", "Mar", "Abr", "Mai", "Jun", "Jul", "Ago",
  "Set", "Out", "Nov", "Dez"};

int t=30;
int  vendas;
  color r=color(255,0,0,100);
  color g=color(0,255,0,100);
  color b=color(0,0,255,100);
void setup() {
  size(1200, 600);
  background(200, 200, 200);
  grafico();
  meses(r);
  meses(g);
  meses(b);
}

void meses(color cor) {
  fill(cor);
  beginShape();
    strokeWeight(3);
  vertex(60, height-100);
  
  int x_anterior=0;
  int y_anterior=0;
  for (int mes=1; mes<=12; mes++) {

    vendas=int(random(5, 11));
    println(vendas);

    int x=mes*60;
    int y=height-vendas*t-100;
    if (mes==1) {
      x_anterior=x;
      y_anterior=y;
    }
  
    vertex(x,y);
    circle(x, y, 10);

    x_anterior=x;
    y_anterior=y;
  }
  vertex(x_anterior,height-100);
  endShape();
}

void grafico() {
  textSize(20);

  for ( int vendas=0; vendas<=10; vendas++) {
    int y=height-vendas*30-100;
    fill(0);
    text(vendas, 20, y);
    strokeWeight(0.2);
    line(0, y, width, y);
  }
  textSize(20);

  for (int mes=1; mes<=12; mes++) {
    int x=mes*58;
    text(meses[mes-1], x, 520);
  }
}
