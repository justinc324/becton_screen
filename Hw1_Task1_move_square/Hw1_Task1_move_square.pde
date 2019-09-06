float x;
float y;
int len;
int wid;
void setup(){
  x=100;
  y=100;
  len=25;
  wid=25;
  fullScreen();
  background(250);
  textSize(30);


}

void draw(){
  background(250);
  fill(200, 25,25);
  rect(x,y,wid,len);
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
    println("xratio= " + str(x/width)+", yratio= "+str(y/height) + ", len= " + len
    + ", wid=" + wid);
  }
  else if(key == 'e'){
    len += 5;
    wid += 5;
  }
  
  else if(key == 'q' && len>5 ){
    len -= 5;
    wid -=5;
  }
  
  else if(key == 'A' && x>0){
    x -=1;
  }
  else if(key == 'D' && x<width){
    x +=1;
  }
  else if(key == 'W' && x>0){
    y -=1;
  }
  else if(key == 'S' && x<width){
    y +=1;
  }
  
  
  else if(key == 'j') {
    len -= 1;
  }
  else if(key == 'k') {
    len += 1;
  }
  else if (key == 'n'){
    wid -= 1;
  }
  else if (key == 'm') {
    wid += 1;
  }
}
