class Corazon{
  float x;
 float y;
 float w;
 float h;
float left;
 float right;
 float top;
 float bottom;
 float speed = 1.5;
 PImage corazon;
Corazon(float corazonx, float corazony, float corazonw, float corazonh){
     corazon = loadImage("heart.png");
   x=corazonx;
   y=corazony;
   w=corazonw;
   h=corazonh;
  left = x - w/2;
  right = x + w/2;
  top = y - h/2;
  bottom = y + h/2;
   
 }
 void mover(){
   x -= speed;
   
  left = x - w/2;
  right = x + w/2;
  top = y - h/2;
  bottom = y + h/2;
   
 }
 void mostrar(){
   image(corazon,x,y,w,h);
 }

}
