PImage [] gif;

int nFrames;
int frame;

void setup() {
  size(600, 600);

  nFrames = 2;
  gif = new PImage [nFrames];

  int i = 0;
  while (i < nFrames) {
    gif[i] = loadImage("data/front-0" + i + ".gif");
    i++;
  }
}

void draw() {
  println(frameCount);
  image(gif[frame], 0, 0, width, height);
  if (frameCount % 20 == 0) {
    frame++;
  }
  if (frame == nFrames) frame = 0;
}
