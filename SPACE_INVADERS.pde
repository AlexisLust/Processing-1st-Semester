int xpos = width / 2;
int x_Planet = 0;
int y_Planet = 6000;
int x_Planet2 = 0;
int y_Planet2 = 6000;
int planetSize = 0;
int planetColor = 0;
int planetSize2 = 0;
int planetColor2 = 0;

int R = 0;
int G = 255;
int B = 0;

void setup() {

  frameRate(60);
  size (900, 600);
  background (00);

  rectMode(CENTER);
}

void draw() {

  background (00);
  movePlanet();
  displayPlanetFirst();
  displayPlanetSecond()
  movePlanet2();
  stroke (0, G, 0);
  line (width/10, (height/10)*9, (width/10)*9, (height/10)*9);
  xpos = desplazarMode(xpos);
  dibujarNave(xpos);

  if (xpos <= (width/100)*12) {
    xpos = (width/100)*12;
  }
  if (xpos >= (width/100)*88) {
    xpos = (width/100)*88;
  }
}

void movePlanet() {
  if (y_Planet > height) {
    y_Planet = -1*height/10;
    x_Planet = int(random(width));
    planetSize = int(random(2, 10));
    planetColor = int(random(50, 255));
  }
  y_Planet = y_Planet + planetSize;
}

void movePlanet2() {
  if (y_Planet2 > height) {
    y_Planet2 = -1*height/10;
    x_Planet2 = int(random(width));
    planetSize2 = int(random(2, 10));
    planetColor2 = int(random(50, 255));
  }
  y_Planet2 = y_Planet2 + planetSize2;
}
void displayPlanetFirst(){
  //if (planetSize
}
void displayPlanetSecond (){
  
}
void displayPlanet() {
  noStroke();
  ellipseMode (CENTER);
  fill (planetColor);
  ellipse (x_Planet, y_Planet, 10*planetSize, 10*planetSize);
  noStroke();
  ellipseMode (CENTER);
  fill (planetColor2);
  ellipse (x_Planet2, y_Planet2, 10*planetSize2, 10*planetSize2);
  
}

void dibujarNave(int xpos) {

  fill(R, G, B);
  rect(xpos, height*0.80, 0.04*width, 0.03*height, 1);
  triangle (xpos - width/80, (height/10)*8, xpos, (height/20)*15, xpos + width / 80, (height/10)*8);
}

int desplazarMode (int xpos) {


  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {


        xpos = xpos - width/100;
      } else if (keyCode == RIGHT) {

        xpos = xpos + width/100;
      }
    }
  }
  return xpos;
}