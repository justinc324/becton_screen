float x;
float y;
int side;
void setup(){
  x=100;
  y=100;
  side=25;
  fullScreen();
  background(250);
  textSize(30);


}

void draw(){
  background(250);
  fill(200, 25,25);
  rect(x,y,side,side);
}

void keyPressed() {
  if (key == 'w' && y >0) {
    y-=5;
  }
  else if (key =='s' && y<height){
    y+=5;
  }
  else if (key =='d' && x<width){
    x+=5;
  }
  else if(key =='a' && x>0){
    x-=5;
  }
  else if(key == 'p'){
    println("xratio= " + str(x/width)+", yratio= "+str(y/height) + ", side= " + side);
  }
  else if(key == 'e'){
    side += 5;
  }
  
  else if(key == 'q' && side>5){
    side -=5;
  }
}
