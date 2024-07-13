//Valentin Marchesi  94702/9

PImage imagen1, imagen2, imagen3,Boton5;
PFont fuenteNueva ;
int pantalla= 0;
int segunda;
int contador= 0;
float X;
float Y;
float X2;
float Y2;
int BotonX= 480;
int BotonY= 380;
int BotonXtamaño=140;
int BotonYtamaño=80;
color ColorBoton;
color ColorBoton2;
color ColorBotonTexto;
color ColorBotonTexto2;
Boolean Botonn=false; 


void setup (){
  size (640,480);
  textSize(40);
  pantalla = 0;
  fuenteNueva = loadFont("Gabriola.vlw");
  Y = -50;
  X = -200;
  X2 = 0;
  Y2 = 0;
  ColorBoton=255;
  ColorBoton2=0;
  ColorBotonTexto=0;
  ColorBotonTexto2=0;
}
  
void draw() {

  //PRIMERA//
  switch (pantalla) {
  case 0:
  imagen1 = loadImage("imagen1.jpg");
  image(imagen1,0,0,640,480);
  Y += 5;
  if (Y > 202)
  Y = 202;
  fill(255,0,0);
  textFont(fuenteNueva);
  textSize(40);
  text("Unravel es un videojuego de plataformas\n y rompecabezas desarrollado por la\n             compañía sueca",50,Y);
  contador++;
  println("Pantalla 1", contador);
  if (contador >= 250) {
  contador = 0;
  pantalla = 1;
  }
  
  //SEGUNDA//
  break;
  case 1:
  imagen2 = loadImage("imagen2.jpg");
  image(imagen2,0,0,640,480);
  X += 5;
  if (X > 202)
  X = 202;
  fill(255,0,0,contador);
  textFont(fuenteNueva);
  textSize(40);
  text("El juego se centra en Yarny, una pequeña\n criatura antropomórfica hecha de lana,\n de la cual el jugador\n navega a través del entorno",50,200);
  contador++;
  println("Pantalla 2", contador);
  if (contador >= 250) {
  contador = 0;
  pantalla = 2;
   }
   
   
   //TERCERA//
   break;
   case 2:
   imagen3 = loadImage("imagen3.jpg");
   image(imagen3,0,0,640,480);
   Y2 += 2;
   X2 += 2;
   //if (X > 202)
   //X = 202;
   fill(255,0,0);
   textFont(fuenteNueva);
   textSize(40);
   text ("utilizando la lana desenrerada para que Yarny solucione\n rompecabezas, evitar criaturas peligrosas,\n y atravesar obstáculos",X2,Y2);
   stroke(ColorBoton2);
   Boton5 = loadImage("Boton5.png");
   image(Boton5,BotonX,BotonY,BotonXtamaño,BotonYtamaño);
   fill(ColorBotonTexto);
   println("Pantalla 3",contador);
   
   }}
   
   void mouseMoved(){
   if (mouseX > BotonX && mouseX < BotonX + BotonXtamaño
   && mouseY > BotonY && mouseY < BotonY + BotonYtamaño) {
   ColorBoton2 = color(3,3,3);
   ColorBoton = color(255,0,0);
   ColorBotonTexto = color(3,3,3);
   Botonn = true;
   }
   else {
   ColorBoton2  = 255;
   ColorBoton = 255;
   ColorBotonTexto = 200;
   Botonn = false;
   }
   }

   void mouseClicked() {
   if (Botonn == true) {
   pantalla = 0;
   Y=0;
   X=0;
   Y2=0;
   X2=0;
   }
   }
 
