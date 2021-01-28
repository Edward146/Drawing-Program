// Global Variables
float canvasX, canvasY, canvasWidth, canvasHeight;
float underCanvasX, underCanvasY, underCanvasWidth, underCanvasHeight;
float redX, redY, colourWidth, colourHeight;
float orangeX, orangeY;
float yellowX, yellowY;
float greenX, greenY;
float blueX, blueY;
float purpleX, purpleY;
float blackX, blackY;
float whiteX, whiteY;
float thinX, thinY, sideWidth, sideHeight;
float thinRectX, thinRectY, thinRectWidth, thinRectHeight;
float mediumX, mediumY;
float mediumRectX, mediumRectY, mediumRectWidth, mediumRectHeight;
float thickX, thickY;
float thickRectX, thickRectY, thickRectWidth, thickRectHeight;
float thickestX, thickestY;
float thickestRectX, thickestRectY, thickestRectWidth, thickestRectHeight;
float squareX, squareY;
float circleX, circleY;
float triangleX, triangleY;
float shapesWidth, shapesHeight;
color ink, black=#000000, white=#FFFFFF, red = #F50F0F, orange = #FF8D00, yellow = #FFF40D, green = #10E03E, blue = #1A99FF, purple = #9800FF, gray = #B2B2B2;
Boolean draw=false;
Boolean blackInk=false, redInk=false, orangeInk=false, yellowInk=false, greenInk=false, blueInk=false, purpleInk=false, whiteInk = false; 
Boolean ellipse = false, square = false, triangle = false;
void setup() {
  background(gray);
fullScreen();
Variables();
//
//
rect(underCanvasX, underCanvasY, underCanvasWidth, underCanvasHeight);
rect(canvasX, canvasY, canvasWidth, canvasHeight);
//
}
void draw() {
  if (redInk == true) {
    ink = red;
  }
  if (blackInk == true) {
    ink = black;
  }
    if (orangeInk == true) {
      ink = orange;
  }
    if (yellowInk == true) {
      ink = yellow;
  }
    if (greenInk == true) {
      ink = green;
  }
    if (blueInk == true) {
      ink = blue;
  }
    if (purpleInk == true) {
      ink = purple;
  }
    if (whiteInk == true) {
      ink = white;
  }
  
  if (draw == true && mouseX>underCanvasX  && mouseX<underCanvasX+underCanvasWidth  && mouseY>underCanvasY && mouseY<underCanvasY+underCanvasHeight) {
    stroke(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  fill(black);
  rect(blackX, blackY, colourWidth, colourHeight);
  fill(red);
  rect(redX, redY, colourWidth, colourHeight);
  fill(orange);
  rect(orangeX, orangeY, colourWidth, colourHeight);
  fill(yellow);
  rect(yellowX, yellowY, colourWidth, colourHeight);
  fill(green);
  rect(greenX, greenY, colourWidth, colourHeight);
  fill(blue);
  rect(blueX, blueY, colourWidth, colourHeight);
  fill(purple);
  rect(purpleX, purpleY, colourWidth, colourHeight);
  fill(white);
  rect(whiteX, whiteY, colourWidth, colourHeight);
  //
  rect(thinX, thinY, sideWidth, sideHeight);
  rect();
  rect(mediumX, mediumY, sideWidth, sideHeight);
  rect();
  rect(thickX, thickY, sideWidth, sideHeight);
  rect();
  rect(thickestX, thickestY, sideWidth, sideHeight);
  rect();
  //
  rect(squareX, squareY, sideWidth, sideHeight);
  rect(circleX, circleY, sideWidth, sideHeight);
  rect(triangleX, triangleY, sideWidth, sideHeight);
}

void mousePressed() {
  if ( mouseX>underCanvasX  && mouseX<underCanvasX+underCanvasWidth  && mouseY>underCanvasY && mouseY<underCanvasY+underCanvasHeight) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  
  
  if (mouseX>blackX && mouseX<blackX+colourWidth && mouseY>blackY && mouseY<blackY+colourHeight) {
  blackInk=true;
  redInk=false;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>redX && mouseX<redX+colourWidth && mouseY>redY && mouseY<redY+colourHeight) {
  blackInk=false;
  redInk=true;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>orangeX && mouseX<orangeX+colourWidth && mouseY>orangeY && mouseY<orangeY+colourHeight) {
  blackInk=false;
  redInk=false;
  orangeInk=true;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>yellowX && mouseX<yellowX+colourWidth && mouseY>yellowY && mouseY<yellowY+colourHeight) {
  blackInk=false;
  redInk=false;
  orangeInk=false;
  yellowInk=true;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>greenX && mouseX<greenX+colourWidth && mouseY>greenY && mouseY<greenY+colourHeight) {
  blackInk=false;
  redInk=false;
  orangeInk=false;
  yellowInk=false;
  greenInk=true;
  blueInk=false;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>blueX && mouseX<blueX+colourWidth && mouseY>blueY && mouseY<blueY+colourHeight) {
  blackInk=false;
  redInk=false;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=true;
  purpleInk=false;
  whiteInk=false;
  }
  
  
  if (mouseX>purpleX && mouseX<purpleX+colourWidth && mouseY>purpleY && mouseY<purpleY+colourHeight) {
  blackInk=false;
  redInk=false;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=true;
  whiteInk=false;
  }
  
  
  if (mouseX>whiteX && mouseX<whiteX+colourWidth && mouseY>whiteY && mouseY<whiteY+colourHeight) {
    blackInk=false;
  redInk=false;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  whiteInk=true;
  }
  
  
  if (mouseX>thinX && mouseX<thinX+sideWidth && mouseY>thinY && mouseY<thinY+sideHeight) {
    strokeWeight(1);
  }
  
  
  if (mouseX>mediumX && mouseX<mediumX+sideWidth && mouseY>mediumY && mouseY<mediumY+sideHeight) {
    strokeWeight(4);
  }
  
  
  if (mouseX>thickX && mouseX<thickX+sideWidth && mouseY>thickY && mouseY<thickY+sideHeight) {
    strokeWeight(8);
  }
  
  if (mouseX>thickestX && mouseX<thickestX+sideWidth && mouseY>thickestY && mouseY<thickestY+sideHeight) {
    strokeWeight(12);
  }
}
void mouseReleased() {
  if (draw == true) {
    draw = false;
}
}
