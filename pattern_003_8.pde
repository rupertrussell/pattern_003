// draws a random pattern of squares overlayed with random semicircles
// by Rupert Russell
// 3 July 2018
//
// based on Semi Circle Patchwork by -~=Manoylov AC=~-
// https://www.openprocessing.org/user/23616/
// 
// Code on Github at https://github.com/rupertrussell/pattern_003
// 

int tileSize = 80;
int count = 0;

color color0 = #152A3B;
color color1 = #158ca7;
color color2 = #F5C03E;
color color3 = #D63826;
color color4 = #F5F5EB;

color[] colourAt = new color[6];

void setup() {
  size(4000, 4000);
  noLoop();
  stroke(0);
  noStroke();
}

void draw() {


  for (int i=0; i < width / tileSize; i ++) {  // width; 
    for (int j=0; j < height /tileSize; j++) {
      saveFillColours();  // save a colour into each quadrant 
      
      fill(colourAt[4]);
      rect(i * tileSize, j * tileSize, tileSize, tileSize); 

      for (int x=0; x < 4; x++) {
        fill(colourAt[x]);
        drawRandomArc(i, j);
      }
    }
  }
  save("pattern_003_8.png");
  exit();
}


void saveFillColours() {

  for (int x = 0; x < 5; x++) {
    int randomColour = floor(random(5)); 

    switch(randomColour) {
    case 0: 
      colourAt[x] = color0;
      break;
    case 1: 
      colourAt[x] = color1;
      break;
    case 2: 
      colourAt[x] = color2;
      break;
    case 3: 
      colourAt[x] = color3;
      break;
    case 4: 
      colourAt[x] = color4;
      break;  
    default:
      fill(255, 255, 0);
    }
  }
}


void drawRandomArc(int i, int j) {

  int randomArc = floor(random(4)); // pick a random arc to draw


  switch(randomArc) {
  case 0: 
  fill(colourAt[0]);
    arc(i * tileSize, j * tileSize + tileSize/2, tileSize, tileSize, radians(270), radians(450), CHORD);
    println("case 0");
    break;
  case 1: 
     fill(colourAt[1]);
    arc(i * tileSize + tileSize/2, j * tileSize, tileSize, tileSize, radians(0), radians(180), CHORD);
    println("case 1");
    break;
  case 2: 
    fill(colourAt[2]);
    arc(i * tileSize + tileSize, j * tileSize + tileSize/2, tileSize, tileSize, radians(90), radians(270), CHORD);
    println("case 2");
    break;
  case 3: 
    fill(colourAt[3]);
    arc(i * tileSize + + tileSize /2, j * tileSize + tileSize, tileSize, tileSize, radians(180), radians(360), CHORD);
    println("case 3");
    break;
  default:
    println("default***");
    arc(i * tileSize + tileSize/2, j * tileSize + tileSize/2, tileSize, tileSize, radians(450), radians(0), CHORD);
  }
}
