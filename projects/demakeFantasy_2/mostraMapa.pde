void mostraMapa(int [][] m) {
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
      case 13:
        image(hp, i*48, j*48);
        break;
      case 14:
        image(roof3, i*48, j*48);
        break;
      case 15:
        image(rip, i*48, j*48);
        break;
      case 16:
        image(sword, i*48, j*48);
        break;
      case 17:
        image(window2, i*48, j*48);
        break;
      case 18:
        image(shield, i*48, j*48);
        break;
      }
    }
  }
}
