int vDivs;
int hDivs;
int vInc;
int hInc;
int i;
int j;
float clr;

void setup(){
  fullScreen();
  background(225);
  stroke(0);
  vDivs = 10; //num columns
  hDivs = 10; //num rows
  vInc = width/vDivs;
  hInc = height/hDivs;
 

  for(i=0; i<vDivs; i++){
    for(j=0; j<hDivs; j++){
      fill(random(0,255), random(0,255), random(0,255));
      rect(i*vInc, j*hInc, vInc, hInc);
    }
  }
  fill(0);
  textSize(30);
  
}

void draw(){
    if (keyPressed) {
    if (key == 'x' || key == 'X') {
      text(str(mouseX)+", "+str(mouseY), mouseX, mouseY);
    }
    }
}

void mouseDragged(){
  circle(mouseX, mouseY, 5);
}
