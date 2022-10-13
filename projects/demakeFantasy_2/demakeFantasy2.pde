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
  sword = loadImage("assets/ff-sword48.png");
  shield = loadImage("assets/ff-shield48.png");
  logo = loadImage("assets/ff-logo.jpg");

  prelude = new SoundFile(this, "assets/prelude.wav");
  village = new SoundFile(this, "assets/village-theme.wav");
}

void draw() {
  background(255);
  jogo_mef();
}
