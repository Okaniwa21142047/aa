float baseH = 160;
float armL1 = 5;
float armL2 = 40;
float armW1 = 10;
float armW2 = 10;
float angle0 = 0;
float angle1 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(200, 200, 200, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'R'){
      angle0 = angle0 + dif;
    }
    if(key == 'L'){
      angle0 = angle0 - dif;
    }
    if(key == 'O'){
      angle1 = angle1 + dif;
    }
    if(key == 'U'){
      angle1 = angle1 - dif;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(100);
  box(40,15,baseH);
  
   //1st link
  rotateX(radians(angle1));
  translate(armL1/2+armL2/2,0,baseH/2-armL1);
  fill(150);
  box(5,15,10);
  
  //2nd link
  rotateX(radians(angle1));  
  translate(armL1,0,-armL1-armL2/2);
  fill(150);
  box(5,15,60);
  
}
