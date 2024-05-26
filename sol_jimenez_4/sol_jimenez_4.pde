/*  Jimenez Garcia Sol Estefania 
      Legajo:120333\8
      Comision 2
*/

PImage foto1, foto2, foto3;
float contador, posX1, posX2, posX3, posX3foto, movimiento, posAtras;
int estado;
String texto1, texto2, texto3, boton;
PFont fuente;


void setup() {
  size(640, 480);
  foto1 = loadImage("portada.jpg");
  foto2 = loadImage("juego.jpg");
  foto3 = loadImage("reglas.gif");
  contador = 0;
  texto1 =  "LUDO ";
  texto2 = "puede ser un juego de mesa o virtual.";
  texto3 = "algunas de las reglas de ellas las vemos en esta foto";
  fuente = loadFont("AgencyFB-Reg-48.vlw");
  posX1 = 70;
  posX2 = 24;
  posX3 = 25;
  posX3foto = 0;
  posAtras = -500;
  movimiento = 20;

}


void draw() {
  contador = map(frameCount, 1, 2 , 1, 2); // uní el contador al framecount
  background(213, 234, 201);
  fill(228, 232, 35);
  textFont(fuente);
  textSize(50);
  textAlign(CENTER);
  
  // PANTALLA 1
  if ( contador < 490 ) {
    image(foto1, 0, 0, 740, 530);
    textSize(55);
    text(texto1, posX1, 56, 500, 200);
      if (contador >= 460 ) {
        posX1+=movimiento;
        posX2 = posAtras; }
  }
  
  // PANTALLA 2
  else if ( contador < 1100 ) {
    image(foto2, 0, 0, 740, 530);
    textSize(27);
    text(texto2, posX2, 56, 590, 200);
      if ( contador > 460 ) {
        posX2+=movimiento; 
          if ( posX2 >= 21 ) {
            movimiento = 0;
            posX3 = posAtras; } }
              if ( contador >= 1070 ) {
                movimiento = 20; }
  }
  
  // PANTALLA 3
  else if ( contador < 1950 ) {
    image(foto3, posX3foto, 0, 740, 530);
    textSize(25);
    text(texto3, posX3, 31, 590, 200);
      if ( contador > 1070 ) {
        posX3 += movimiento; }
          if ( posX3 >= 25 ) {
            movimiento = 0; 
              if ( contador > 1910 ) {
                movimiento = 20;
                posX3foto += movimiento; }
     }
  }

  // BOTON SUPERFICIAL
  else if ( contador > 1950 ) {
    fill(0);
    text("sol garcia", 320, 240);
    fill(190, 194, 16);
    rect( 410, 355, 190, 90);
    fill(255);
    textSize(20);
    text("  reiniciar \n presentación", 505, 393); }
  
  // CAMBIO DE COLOR DEL BOTON SUPERFICIAL
  if ( contador > 1950 && mouseX>410 && mouseX<410+190 && mouseY>355 && mouseY<355+90) {
    fill(235, 240, 119);
    rect( 415, 360, 180, 80);
    textSize(20);
    fill(0);
    text("  reiniciar \n presentación", 505, 393); }

}


void mousePressed () { 

frameCount+=500;
  
  // BOTON
  if( frameCount > 1950 && mouseX>410 && mouseX<410+190 && mouseY>355 && mouseY<355+90){
       fill(219, 227, 23);
       rect( 410, 355, 190, 90);
       frameCount = 0; 
       contador = 0;
       posX1 = 70;
       posX2 = 24;     
       posX3 = 25;
       movimiento = 20; 
       posX3foto = 0; }

println(frameCount);

}
