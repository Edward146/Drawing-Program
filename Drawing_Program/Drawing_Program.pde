// Global Variables
float canvasX, canvasY, canvasWidth, canvasHeight;
float redX, redY, colourWidth, colourHeight;
float orangeX, orangeY;
float yellowX, yellowY;
float greenX, greenY;
float blueX, blueY;
float purpleX, purpleY;
float blackX, blackY;
color ink, black=#000000, white=#FFFFFF, red = #F50F0F, orange = #FF8D00, yellow = #FFF40D, green = #10E03E, blue = #1A99FF, purple = #9800FF;
Boolean draw=false;
Boolean blackInk=false, redInk=false, orangeInk=false, yellowInk=false, greenInk=false, blueInk=false, purpleInk=false; 
void setup() {
fullScreen();
Variables();
//
//
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
  
  
  
  if (draw == true && mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
    stroke(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  rect(redX, redY, colourWidth, colourHeight);
  rect(blackX, blackY, colourWidth, colourHeight);
}

void mousePressed() {
  if ( mouseX>canvasX  && mouseX<canvasX+canvasWidth  && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
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
  
  if (mouseX>redX && mouseX<redX+colourWidth && mouseY>redY && mouseY<redY+colourHeight) {
  blackInk=false;
  redInk=true;
  orangeInk=false;
  yellowInk=false;
  greenInk=false;
  blueInk=false;
  purpleInk=false;
  
  }
  }
}

void mouseReleased() {
  if (draw == true) {
    draw = false;
}
}
