class Fantasma{
 float x;
 float y;
 float w;
 float h;
 int maxImages = 6;
 int imageIndex = 0;
 PImage[] images = new PImage[maxImages];
  float left;
 float right;
 float top;
 float bottom;
 int timeToNextFrame = 0;
 int currentframe;
 float speed = 0.9;
 
 boolean eliminar;
 
 Fantasma(float fantasmax, float fantasmay, float fantasmaw, float fantasmah){
   
   for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("sprite_" + i + ".png");
    }
   
   x=fantasmax;
   y=fantasmay;
   w=fantasmaw;
   h=fantasmah;
   left = x - w/2;
  right = x + w/2;
  top = y - h/2;
  bottom = y + h/2;
   
   eliminar = false;
 }
 void mover(){
   x -= speed;
   
  left = x - w/2;
  right = x + w/2;
  top = y - h/2;
  bottom = y + h/2;
   
 }
 
 void render(){
   if (timeToNextFrame < millis()) {
    currentframe = (currentframe+1) % maxImages;
    timeToNextFrame = millis() + 200;
  }
    PImage currentImage = images[(currentframe) % maxImages];
  image(currentImage, x, y, w, h);
 }

 
}
