  class Jugador {
  int maxImages = 15;
  int runimages = 8;
  int imageIndex = 0;
  PImage[] images = new PImage[maxImages];
  PImage[] runimage = new PImage[runimages];
  float x = 0;
  float y = 530;
  float velX = 0;
  float velY = 0;
  int limiteIzquierdo = 0;
  int limiteDerecho = 800;
  int limiteSuperior = 0;
  int limiteInferior = 480;
  boolean saltando = false;
  float alturaSalto = 17;
  boolean corriendo =false;
  boolean correderecha;
  boolean correizquierda;
  float speed = 4;
  boolean disparo= false;
   int timeToNextFrame = 0;
 int currentframe;
 boolean muerte;
float left;
 float right;
 float top;
 float bottom;
 int vidas=100;
 
 
  Jugador() {
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("cerdo i " + i + ".png");
    }
    for (int i = 0; i < runimage.length; i++) {
    runimage[i] = loadImage("walk " + i + ".png");
  }
  left = x - 70/2;
  right = x + 70/2;
  top = y - 70/2;
  bottom = y + 70/2;
  
  correderecha=false;
  correizquierda=false;
  muerte = false;
  }

void mover() {

  // cambia la velocidad en función de las teclas presionadas
  if(correderecha==true && jugador.x < jugador.limiteDerecho - 50){
    velX = +speed;
  }
  if(correizquierda==true && jugador.x > jugador.limiteIzquierdo){
    velX = -speed;
  }if (correizquierda==true && correderecha==true){
    velX = 0;
    corriendo= false;
  }if (correizquierda==false && correderecha==false){
    velX = 0;
  }
  
  if(jugador.top<= enemigo.bottom && 
      jugador.bottom >= enemigo.top && 
      jugador.left <= enemigo.right &&
      jugador.right >= enemigo.left){
        vidas--;
      }
      if(jugador.top<= enemigo2.bottom && 
      jugador.bottom >= enemigo2.top && 
      jugador.left <= enemigo2.right &&
      jugador.right >= enemigo2.left){
        vidas--;
      }if(vidas==0){
        nivel=1;
      }
      
      if(jugador.top<= fantasma.bottom && 
      jugador.bottom >= fantasma.top && 
      jugador.left <= fantasma.right &&
      jugador.right >= fantasma.left){
        vidas--;
      }
      if(jugador.top<= fantasma2.bottom && 
      jugador.bottom >= fantasma2.top && 
      jugador.left <= fantasma2.right &&
      jugador.right >= fantasma2.left){
        vidas--;
      }if(vidas==0){
        nivel=1;
      }
      if(jugador.top<= fantasma3.bottom && 
      jugador.bottom >= fantasma3.top && 
      jugador.left <= fantasma3.right &&
      jugador.right >= fantasma3.left){
        vidas--;
      }if(vidas==0){
        nivel=1;
      }
      if(jugador.top<= yeti.bottom && 
      jugador.bottom >= yeti.top && 
      jugador.left <= yeti.right &&
      jugador.right >= yeti.left){
        vidas= vidas-2;
      }if(vidas==0){
        nivel=1;
      }
      
  

  if (saltando) {
    velY += 1;
    if (y + velY > limiteInferior - 50) {
      y = limiteInferior - 50;
      saltando = false;
    }
  }
    else{ 
    velY = 0.5;
  }

  x += velX;
  y += velY;

  x = constrain(x, limiteIzquierdo, limiteDerecho - 50);
  y = constrain(y, limiteSuperior, limiteInferior - 50);
  
  left = x - 100/2;
  right = x + 100/2;
  top = y - 100/2;
  bottom = y + 100/2;
}

  void mostrar() {
    float lerpedX = lerp(x, x + velX, 0.2);
    float lerpedY = lerp(y, y + velY, 0.2);

    if (saltando) {
      lerpedY -= alturaSalto;
    }

    if (corriendo) {if (timeToNextFrame < millis()) {
    currentframe = (currentframe+1) % runimages;
    timeToNextFrame = millis() + 30;
  }
    PImage currentImage = runimage[(currentframe) % runimages];
  image(currentImage, lerpedX, lerpedY, 100, 100);
}
else  {if (timeToNextFrame < millis()) {
    currentframe = (currentframe+1) % maxImages;
    timeToNextFrame = millis() + 20;
  }
    PImage currentImage = images[(currentframe) % maxImages];
  image(currentImage, lerpedX, lerpedY, 100, 100);
}
  }
}
