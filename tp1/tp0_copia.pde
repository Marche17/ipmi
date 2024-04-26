PImage Playa;


void setup(){
  size(800,400);
  background(400);
  

  
  background(60,162,225);
   fill(30,55,85);
  rect(400,255,800,30);
  noStroke();
  fill(112,114,113);
  rect(400,0,800,70);
  fill(123,119,111);
  rect(400,70,800,40);
  fill(163,127,95);
  rect(400,100,800,50);
  fill(191,134,87);
  rect(400,150,800,50);
  fill(225,91,35);
  rect(400,200,800,55);
  fill(35,70,93);
  rect(400,285,800,40);
  fill(108,75,53);
  rect(400,325,800,30);
  fill(126,85,52);
  rect(400,345,800,55);
  fill(254,194,20);
  ellipse(530,255,20,20);
  
  
  Playa = loadImage("Playa.jpg");
 
  
}
  


void draw(){
  image( Playa,0,0,400,400); 
 
  }


  
