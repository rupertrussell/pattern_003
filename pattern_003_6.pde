// draws a random pattern of squares overlayed with random semicircles
// by Rupert Russell
// 3 July 2018
//
// based on Semi Circle Patchwork by -~=Manoylov AC=~-
// https://www.openprocessing.org/user/23616/
// 

int tileSize = 200;
int count = 0;
int previousRandomArc0 = 0;
int previousRandomArc1 = 1;
int previousRandomArc2 = 2;
int previousRandomArc3 = 3;

color color0 = #152A3B;
color color1 = #158ca7;
color color2 = #F5C03E;
color color3 = #D63826;
//color color4 = #F5F5EB;

color color4 = #FFFFEF;



void setup() {
  size(3060, 3060);
  noLoop();
  stroke(0);

  //  noStroke();
}

void draw() {
  for (int i=0; i < width / tileSize; i ++) {  // width; 
    for (int j=0; j < height /tileSize; j++) {
      pickFillColour();  // pick a random colour
      rect(i * tileSize, j * tileSize, tileSize, tileSize);
      pickFillColour();  // pick a random colour

      drawRandomArc(i, j);
      pickFillColour();


      drawRandomArc(i, j);
      pickFillColour();


      drawRandomArc(i, j);
      // arc(i * tileSize, j * tileSize + tileSize/2, tileSize, tileSize, radians(270), radians(450), CHORD);
    }
  }
  save("pattern_003_6.png");
  exit();
}


void pickFillColour() {
  int randomColour = floor(random(5)); 

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


void drawRandomArc(int i, int j) {

  int randomArc = floor(random(4)); 


  switch(randomArc) {
  case 0: 
    arc(i * tileSize, j * tileSize + tileSize/2, tileSize, tileSize, radians(270), radians(450), CHORD);
    println("case 0");
    break;
  case 1: 
    arc(i * tileSize + tileSize/2, j * tileSize, tileSize, tileSize, radians(0), radians(180), CHORD);
    println("case 1");
    break;
  case 2: 
    arc(i * tileSize + tileSize, j * tileSize + tileSize/2, tileSize, tileSize, radians(90), radians(270), CHORD);
    println("case 2");
    break;
  case 3: 
    arc(i * tileSize + + tileSize /2, j * tileSize + tileSize, tileSize, tileSize, radians(180), radians(360), CHORD);
    println("case 3");
    break;
  default:
    println("default***");
    arc(i * tileSize + tileSize/2, j * tileSize + tileSize/2, tileSize, tileSize, radians(450), radians(0), CHORD);
  }

  previousRandomArc3 =  previousRandomArc2;
  previousRandomArc2 = previousRandomArc1;
  previousRandomArc1 = previousRandomArc0;
  previousRandomArc0 = randomArc;
}
