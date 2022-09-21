float w = mouseX;
float h = mouseY;

void setup() {
  size(800, 600);
  noStroke();
  rectMode(CENTER);
}
void draw() {
  w = map(mouseX, 0, width, 185, 615);
  h = map(mouseY, 0, height, 190, 410);
  background(220);
  fill(255);
  rect(width/2, height/2, 480, 270);
  fill(0);
  circle(w, h, 50);
}
