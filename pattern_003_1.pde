// draws a random pattern of squares overlayed with random semicircles
// by Rupert Russell
// 3 July 2018
//
// based on Semi Circle Patchwork by -~=Manoylov AC=~-
// https://www.openprocessing.org/user/23616/
// 

int tileSize = 25;

color color0 = #152A3B;
color color1 = #158ca7;
color color2 = #F5C03E;
color color3 = #D63826;
color color4 = #F5F5EB;


void setup() {
  size(400, 400);
  noLoop();
  stroke(0);
  noStroke();
}

void draw() {
  for (int i=0; i < width / tileSize; i ++) {  // width; 
    for (int j=0; j < height /tileSize; j++) {
      pickFillColour();  // pick a random colour
      rect(i * tileSize, j * tileSize, tileSize, tileSize);
    }
  }
  save("pattern_003_1.png");
}


void pickFillColour() {
  int randomColour = floor(random(4)); 

  switch(randomColour) {
  case 0: 
    fill(color0);
    break;
  case 1: 
    fill(color1);
    break;
  case 2: 
    fill(color2);
    break;
  case 3: 
    fill(color3);
    break;
  case 4: 
    fill(color4);
    break;  
  default:
    fill(255, 255, 0);
  }
}
