PImage grass, tree, window, door, fence, flowers, lake, inn, wall, wall2, floor, roof, roof2;

int [][] m = {
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8},
  {1, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
  {1, 9, 1, 6, 6, 6, 6, 1, 7, 7, 7, 7, 7},
  {1, 9, 1, 5, 5, 5, 5, 1, 7, 1, 12, 12, 12},
  {1, 9, 1, 2, 2, 4, 2, 1, 7, 1, 12, 12, 12},
  {1, 9, 1, 2, 2, 3, 2, 1, 7, 1, 12, 12, 12},
  {1, 9, 1, 11, 11, 7, 11, 1, 7, 1, 12, 12, 12},
  {1, 9, 1, 10, 10, 7, 10, 1, 7, 1, 11, 11, 11},
  {1, 9, 1, 1, 1, 7, 7, 7, 7, 7, 7, 7, 7},
  {1, 8, 8, 8, 8, 7, 8, 8, 8, 8, 8, 8, 8},
  {1, 1, 0, 0, 0, 7, 0, 0, 0, 0, 1, 1, 1},
};

void setup() {
  size(624, 624);

  grass = loadImage("assets/ff-grass48.png");
  tree = loadImage("assets/ff-tree48.png");
  window = loadImage("assets/ff-window48.png");
  door = loadImage("assets/ff-door48.png");
  inn = loadImage("assets/ff-inn48.png");
  fence = loadImage("assets/ff-fence48.png");
  flowers = loadImage("assets/ff-flowers48.png");
  floor = loadImage("assets/ff-floor48.png");
  wall = loadImage("assets/ff-wall48.png");
  wall2 = loadImage("assets/ff-wall248.png");
  roof = loadImage("assets/ff-roof48.png");
  roof2 = loadImage("assets/ff-roof248.png");
  lake = loadImage("assets/ff-lake48.png");

  mostraMapa();
}
void mostraMapa() {
  for (int i=0; i<13; i++) {
    for (int j=0; j<13; j++) {
      switch(m[j][i]) {
      case 0:
        image(grass, i*48, j*48);
        break;
      case 1:
        image(tree, i*48, j*48);
        break;
      case 2:
        image(window, i*48, j*48);
        break;
      case 3:
        image(door, i*48, j*48);
        break;
      case 4:
        image(inn, i*48, j*48);
        break;
      case 5:
        image(roof2, i*48, j*48);
        break;
      case 6:
        image(roof, i*48, j*48);
        break;
      case 7:
        image(floor, i*48, j*48);
        break;
      case 8:
        image(wall, i*48, j*48);
        break;
      case 9:
        image(wall2, i*48, j*48);
        break;
      case 10:
        image(fence, i*48, j*48);
        break;
      case 11:
        image(flowers, i*48, j*48);
        break;
      case 12:
        image(lake, i*48, j*48);
        break;
      }
    }
  }
}
