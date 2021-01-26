// Global Variables
float canvasX, canvasY, canvasWidth, canvasHeight;
float redX, redY, colourWidth, colourHeight;
float orangeX, orangeY;
float yellowX, yellowY;
float greenX, greenY;
float blueX, blueY;
float purpleX, purpleY;
color ink, black=#000000, white=#FFFFFF;
Boolean draw=false;


void setup() {
fullScreen();
canvasX = width*0;
canvasY = height*1/9;
canvasWidth = width*9/11;
canvasHeight = height*7/9;
//
ink = black;
//
rect(canvasX, canvasY, canvasWidth, canvasHeight);
//
}

void draw() {
  if (draw == true && mouseX>canvasX && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight)
  stroke(ink);
  line(mouseX, mouseY, pmouseX, pmouseY);

}

void mousePressed() {
  
  if (mouseX>canvasX && mouseX<canvasX+canvasWidth && mouseY>canvasY && mouseY<canvasY+canvasHeight) {
        draw = true;
  }
  }


void mouseReleased() {
    draw = false;

  
}
