void setup() {
  size(624, 624);
  textSize(20);

  grass = loadImage("assets/ff-grass48.png");
  tree = loadImage("assets/ff-tree48.png");
  window = loadImage("assets/ff-window48.png");
  window2 = loadImage("assets/ff-window248.png");
  door = loadImage("assets/ff-door48.png");
  inn = loadImage("assets/ff-inn48.png");
  fence = loadImage("assets/ff-fence48.png");
  flowers = loadImage("assets/ff-flowers48.png");
  floor = loadImage("assets/ff-floor48.png");
  wall = loadImage("assets/ff-wall48.png");
  wall2 = loadImage("assets/ff-wall248.png");
  roof = loadImage("assets/ff-roof48.png");
  roof2 = loadImage("assets/ff-roof248.png");
  roof3 = loadImage("assets/ff-roof348.png");
  lake = loadImage("assets/ff-lake48.png");
  hp = loadImage("assets/ff-hp48.png");
  rip = loadImage("assets/ff-rip48.png");
  crest = loadImage("assets/ff-sword48.png");
  shield = loadImage("assets/ff-shield48.png");
  logo = loadImage("assets/ff-logo.jpg");
  bridge = loadImage("assets/ff-bridge48.png");
  hole = loadImage("assets/ff-hole48.png");
  column = loadImage("assets/ff-column48.png");

  prelude = new SoundFile(this, "assets/prelude.wav");
  village = new SoundFile(this, "assets/village-theme.wav");
  battle = new SoundFile(this, "assets/battle-theme.wav");
  sword = new SoundFile(this, "assets/sword-sound-effect.wav");
  victory = new SoundFile(this, "assets/victory-theme.wav");

  gif1 = new PImage [nFrames];
  gif2 = new PImage [nFrames];
  gif3 = new PImage [nFrames];
  gif4 = new PImage [nFrames];
  
  int i = 0;
  while (i < nFrames) {
    gif1[i] = loadImage("assets/front-0" + i + ".gif");
    i++;
  }
  int j = 0;
  while (j < nFrames) {
    gif2[j] = loadImage("assets/back-0" + j + ".gif");
    j++;
  }
  int k = 0;
  while (k < nFrames) {
    gif3[k] = loadImage("assets/left-0" + k + ".gif");
    k++;
  }
  int l = 0;
  while (l < nFrames) {
    gif4[l] = loadImage("assets/right-0" + l + ".gif");
    l++;
  }
}

void draw() {
  background(255);
  jogo_mef();
}
