int num=100;
  float sx[]=new float[num];
float sy[]=new float[num];
float becx[]=new float[num];
float becy[]=new float[num];
float scalex[]=new float[num];
float scaley[]=new float[num];
float part[]=new float[num];
int parts[]=new int[num];


  PImage img1;
  PImage img2;
  PImage img3;
  PImage img4;
  PImage img5;
  PImage img6;
  PImage img7;
  PImage img8;
  PImage img9;





void setup(){
  size(800,800);
  background(200);
  rectMode(CENTER);
  noStroke();
  imageMode(CENTER);
  img1=loadImage("part1.png");
  img2=loadImage("part2.png");
  img3=loadImage("part3.png");
  img4=loadImage("part4.png");
  img5=loadImage("part5.png");
  img6=loadImage("part6.png");
  img7=loadImage("part7.png");
  img8=loadImage("part8.png");
  img9=loadImage("part9.png");

 
  
  for(int i=0;i<num;i++){
    sx[i]=random(width);
    sy[i]=random(height);
    becx[i]=0;
    becy[i]=0;
    scalex[i]=random(50,110);
    scaley[i]=random(50,110);
    part[i]=random(1,10);
    parts[i]=int(part[i]);
  }
}

void draw(){
  background(0);
  stripDisp();
  smash();
}

void stripDisp(){
  for(int i=0;i<num;i++){
    switch(parts[i]){
      case 1:
      image(img1,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 2:
      image(img2,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 3:
      image(img3,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 4:
      image(img4,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 5:
      image(img5,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 6:
      image(img6,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 7:
      image(img7,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 8:
      image(img8,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      case 9:
      image(img9,sx[i],sy[i],scalex[i],scaley[i]);
      break;
      default :
      break;
    }
    sx[i]+=becx[i];
    sy[i]+=becy[i];
    
    if(becx[i]>0){
      becx[i]--;
    }else if(becx[i]<0){
      becx[i]++;
    }
    if(becy[i]>0){
      becy[i]--;
    }else if(becy[i]<0){
      becy[i]++;
    }
    
    if(dist(sx[i],sy[i],mouseX,mouseY)<60){
      
      becx[i]+=int(random(-7,8));
      becy[i]+=int(random(-7,8));    
  }
  }
  
}

void smash(){
  if(mousePressed==true){
  for(int i=0;i<num;i++){
     if(dist(sx[i],sy[i],mouseX,mouseY)<150){
      
      becx[i]+=int(random(-20,21));
      becy[i]+=int(random(-20,21));    
  }
  }
  }
  
}

void keyPressed(){  
  if(key=='r'){
    for(int i=0;i<num;i++){
      if(sx[i]>400){
        becx[i]+=int(random(-30,-10));
      }else if(sx[i]<=400){
        becx[i]+=int(random(10,30));
      }
      
      if(sy[i]>400){
        becy[i]+=int(random(-30,-10));
      }else if(sy[i]<=400){
        becy[i]+=int(random(10,30));
      }
    }
  }
}
