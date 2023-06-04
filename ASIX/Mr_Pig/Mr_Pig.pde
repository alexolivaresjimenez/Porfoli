Jugador jugador;
Enemigo enemigo;
Enemigo enemigo2;
Fantasma fantasma;
Fantasma fantasma2;
Fantasma fantasma3;
Corazon heart;
Yeti yeti;
ArrayList<Bala> bala;
ArrayList<Enemigo> enemigolista;
ArrayList<Fantasma> fantasmalista;
ArrayList<Yeti> yetilista;
ArrayList<Corazon> heartlista;
PImage mapa;
int e1 = 0;
int lastShotTime = 0;
int shotCooldown = 200;
boolean juegoIniciado = false;
PImage q;
PImage arriba;
PImage abajo;
PImage izquierda;
PImage derecha;
int nivel = 0;



void setup() {
  size(800, 600);
  
  jugador = new Jugador();
  enemigo = new Enemigo(600, 450, 102 , 102);
  enemigo2 = new Enemigo(400, 470, 78 , 78);
  
  heart= new Corazon(400, 470, 32 , 32);
  
  fantasma = new Fantasma(700, 330, 70 , 50);
  fantasma2 = new Fantasma(500, 350, 120 , 100);
  fantasma3 = new Fantasma(800, 350, 100 , 80);
  
  yeti = new Yeti(600, 390, 190 , 150);
 
  
  bala = new ArrayList<Bala>();
  enemigolista = new ArrayList<Enemigo>();
  fantasmalista = new ArrayList<Fantasma>();
  yetilista = new ArrayList<Yeti>();
  heartlista = new ArrayList<Corazon>();
 
  enemigolista.add(enemigo);
  enemigolista.add(enemigo2);
  
  fantasmalista.add(fantasma);
  fantasmalista.add(fantasma2);
  fantasmalista.add(fantasma3);
  
  heartlista.add(heart);
yetilista.add(yeti);
  

 
q = loadImage("q.png");
arriba = loadImage("arriba.png");
abajo = loadImage("abajo.png");
izquierda = loadImage("izquierda.png");
derecha = loadImage("derecha.png");
  
  
  frameRate(60);
  

  mapa = loadImage("mapa.png");
  mapa.resize(800,600);
}

void draw() {
  switch (nivel){
  case 0:  
  jugador.vidas=10000;
    background(255);
    image(q, 600, 289, 65, 65);
    image(arriba, 110, 250, 65, 65);
    image(abajo, 110, 320, 65, 65);
    image(izquierda, 40, 320, 65, 65);
    image(derecha, 180, 320, 65, 65);
    textSize(50);
    textAlign(CENTER);
    text("Mr. Pig", width/2, 100);
    textSize(50);
    textAlign(CENTER);
    text("PRUEBA LOS CONTROLES AHORA", width/2, height/3);
    fill(255);
    rectMode(CENTER);
    rect(width/2, height/2, 200, 100);
    fill(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Iniciar", width/2, height/2);
    jugador.mover();
    jugador.mostrar();
    for(Bala aBala : bala){
      aBala.mostrar();
      aBala.mover();
      aBala.comprobarborrar();
    }
    break;
    
  case 1:   
  
    background(255,0,0);
    textSize(30);
    fill(255);
    textAlign(CENTER, CENTER);
    text("LOS MONSTRUOS SE HAN APROPIADO DEL BOSQUE", width/2, height/3);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 200, 100);
    fill(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Volver al inicio", width/2, height/2);
    break;
    
  case 2:  
    background(255);
    image(mapa,0,0);
    jugador.mover();
    jugador.mostrar();
    
    String texto = "Vida: " + str(jugador.vidas)+"%";
    textSize(30);
    text(texto, 100, 50);
    String nivel1 = "NIVEL 1:";
    textSize(30);
    text(nivel1, 400, 50);
    for (Enemigo anEnemigo : enemigolista){
      anEnemigo.render();
      anEnemigo.mover();
    }
  
    for(Bala aBala : bala){
      aBala.mostrar();
      aBala.mover();
      aBala.comprobarborrar();
        
      for(Enemigo anEnemigo : enemigolista){
        aBala.dispararenemigo(anEnemigo);
      }
    }for(int i = heartlista.size()-1; i >= 0; i=i-1 ){
    Corazon aCorazon = heartlista.get(i);
    if(enemigolista.size() <= 2){
      heart.mover();
    heart.mostrar();
    }
    if(enemigolista.size() < 2){
      heart.speed=0;
      if(jugador.top<= heart.bottom && 
      jugador.bottom >= heart.top && 
      jugador.left <= heart.right &&
      jugador.right >= heart.left){
        heartlista.remove(heart);
        jugador.vidas= jugador.vidas+50;
      }
      
    }
    }
  
    for(int i = bala.size()-1; i >= 0; i=i-1 ){
      Bala aBala = bala.get(i);
      if(aBala.borrarbala==true){
        bala.remove(aBala);
      }
    }
for(int i = enemigolista.size()-1; i >= 0; i=i-1 ){
    Enemigo anEnemigo = enemigolista.get(i);
    
    if(anEnemigo.eliminar==true && e1==5){
    enemigolista.remove(anEnemigo);
    anEnemigo.left = 0;
    anEnemigo.right = 0;
    anEnemigo.top = 0;
    anEnemigo.bottom = 0;
      e1=0;
    }
    if(enemigolista.size() == 0) nivel = 3;
  }
    break;
    
    case 3:  
    background(255);
    image(mapa,0,0);
    jugador.mover();
    jugador.mostrar();
    String texto2 = "Vida: " + str(jugador.vidas)+"%";
    textSize(30);
    text(texto2, 100, 50);
    String nivel2 = "NIVEL 2:";
    textSize(30);
    text(nivel2, 400, 50);
    for (Fantasma aFantasma : fantasmalista){
      aFantasma.render();
      aFantasma.mover();
    }
  
    for(Bala aBala : bala){
      aBala.mostrar();
      aBala.mover();
      aBala.comprobarborrar();
        
      for(Fantasma aFantasma : fantasmalista){
        aBala.dispararfantasma(aFantasma);
      }
    }
  
    for(int i = bala.size()-1; i >= 0; i=i-1 ){
      Bala aBala = bala.get(i);
      if(aBala.borrarbala==true){
        bala.remove(aBala);
      }
    }
for(int i = fantasmalista.size()-1; i >= 0; i=i-1 ){
    Fantasma aFantasma = fantasmalista.get(i);
    
    if(aFantasma.eliminar==true && e1==7){
    fantasmalista.remove(aFantasma);
    aFantasma.left = 0;
    aFantasma.right = 0;
    aFantasma.top = 0;
    aFantasma.bottom = 0;
      e1=0;
    }
  }
  if(fantasmalista.size() == 0) nivel = 4;
    break;  
    
    case 4:  
    background(255);
    image(mapa,0,0);
    jugador.mover();
    jugador.mostrar();
    String texto3 = "Vida: " + str(jugador.vidas)+"%";
    textSize(30);
    text(texto3, 100, 50);
    String nivel3 = "NIVEL 3:";
    textSize(30);
    text(nivel3, 400, 50);
    
    for (Yeti aYeti : yetilista){
      aYeti.render();
      aYeti.mover();
    }
  
    for(Bala aBala : bala){
      aBala.mostrar();
      aBala.mover();
      aBala.comprobarborrar();
        
      for(Yeti aYeti : yetilista){
        aBala.dispararyeti(aYeti);
      }
    }
  
    for(int i = bala.size()-1; i >= 0; i=i-1 ){
      Bala aBala = bala.get(i);
      if(aBala.borrarbala==true){
        bala.remove(aBala);
      }
    }
for(int i = yetilista.size()-1; i >= 0; i=i-1 ){
    Yeti aYeti = yetilista.get(i);
    
    if(aYeti.eliminar==true && e1==20){
    yetilista.remove(aYeti);
    aYeti.left = 0;
    aYeti.right = 0;
    aYeti.top = 0;
    aYeti.bottom = 0;
      e1=0;
    }
  }
  if(yetilista.size() == 0) nivel = 5;
    break;  
    
    case 5:   
  
    background(0,200,0);
    textSize(30);
    fill(255);
    textAlign(CENTER, CENTER);
    text("¡¡LOS MONSTRUOS QUE AMENAZABAN EL BOSQUE SE FUERON!!", width/2, height/3);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 200, 100);
    fill(0);
    textSize(30);
    textAlign(CENTER, CENTER);
    text("Volver al inicio", width/2, height/2);
    break;
}
}

void keyPressed(){
  if (keyCode == LEFT && jugador.x > jugador.limiteIzquierdo) {
      jugador.correizquierda=true;
      jugador.corriendo = true;
    }
    if (keyCode == RIGHT && jugador.x < jugador.limiteDerecho - 50) {
      jugador.correderecha=true;
      jugador.corriendo = true;
}
  if (keyCode == UP && !jugador.saltando && jugador.y > jugador.limiteSuperior) {
      jugador.saltando = true;
      jugador.velY = -jugador.alturaSalto;
    }
}
void keyReleased(){
  if (keyCode == LEFT) {
      jugador.correizquierda=false;
      jugador.corriendo = false;
    }
    if (keyCode == RIGHT) {
      jugador.correderecha=false;
      jugador.corriendo = false;
}
if (key == 'q' || key == 'Q') {
    int now = millis();
    if (now - lastShotTime > shotCooldown) {
      bala.add(new Bala(jugador.x, jugador.y));
      lastShotTime = now;
    }
  }
  if (key == 'r' || key == 'R') {
    reiniciar();
    nivel=0;
  }
}
void mousePressed() {
  if (nivel==0 && mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
    nivel = 2;
    jugador.x=0;
    jugador.y=530;
    jugador.vidas=100;
  }else if (jugador.vidas <= 0 && mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
    reiniciar();
    nivel=0;
  }else if (nivel==5 && mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 50 && mouseY < height/2 + 50) {
    reiniciar();
    nivel=0;
  }
}
void reiniciar() {
  enemigo = new Enemigo(600, 450, 102 , 102);
  enemigo2 = new Enemigo(400, 470, 78 , 78);
  fantasma = new Fantasma(700, 330, 70 , 50);
  fantasma2 = new Fantasma(500, 350, 120 , 100);
  fantasma3 = new Fantasma(800, 350, 100 , 80);
  yeti = new Yeti(600, 390, 190 , 150);
  heart= new Corazon(400, 470, 32 , 32);
  bala = new ArrayList<Bala>();
  enemigolista = new ArrayList<Enemigo>();
  fantasmalista = new ArrayList<Fantasma>();
  yetilista = new ArrayList<Yeti>();
  heartlista = new ArrayList<Corazon>();
  enemigolista.add(enemigo);
  enemigolista.add(enemigo2);
  fantasmalista.add(fantasma);
  fantasmalista.add(fantasma2);
  fantasmalista.add(fantasma3);
  yetilista.add(yeti);
  heartlista.add(heart);
  juegoIniciado = false;
  lastShotTime = 0;
  e1=0;
  nivel = 0;
}
