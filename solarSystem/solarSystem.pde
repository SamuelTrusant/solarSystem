//import gifAnimation.*;

boolean isPaused = false;

PShape earth;
PShape sun;
PShape venus;
PShape Mars;
PShape jupiter;
PShape moon;

PShape neptune;
PShape europe;

PImage img;
PImage background;

int ang = 0;
float sunr = 80;
float venusr = 10;
float earthr = 20;
float moonr = 5;
float Marsr = 22;
float jupiterr = 40;
float neptuner = 15;
float europer = 6;

float venusSpeed = 1.4;
float earthSpeed = 1;
float moonSpeed = 6;
float marsSpeed = 0.8;
float jupiterSpeed = 0.2;
float neptuneSpeed = 1;
float europeSpeed = 2;

float currentVenusSpeed = 0;
float currentEarthSpeed = 0;
float currentMoonSpeed = 0;
float currentMarsSpeed = 0;
float currentJupiterSpeed = 0;
float currentNeptuneSpeed = 0;
float currentEuropeSpeed = 0;

//int framesGif = 0;
//GifMaker gifExport;


void setup ( ) {
  size(1200 , 600 ,P3D) ;
  
  background = loadImage("espacio.jpg");
  background(background);
  
  stroke(0);
  img = loadImage("sol.jpg");
  beginShape ( ) ;
  sun = createShape (SPHERE,sunr);
  sun.setStroke(255);
  sun.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("venus.jpg");
  beginShape ( ) ;
  venus = createShape (SPHERE,venusr);
  venus.setStroke(255);
  venus.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("tierraNoche.jpg");
  beginShape ( ) ;
  earth = createShape (SPHERE,earthr);
  earth.setStroke(255);
  earth.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("luna.jpg");
  beginShape ( ) ;
  moon = createShape (SPHERE,moonr);
  moon.setStroke(255);
  moon.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("marte.jpg");
  beginShape ( ) ;
  Mars = createShape (SPHERE,Marsr);
  Mars.setStroke(255);
  Mars.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("jupiter.jpg");
  beginShape ( ) ;
  jupiter = createShape (SPHERE,jupiterr);
  jupiter.setStroke(255);
  jupiter.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("neptuno.jpg");
  beginShape ( ) ;
  neptune = createShape (SPHERE,neptuner);
  neptune.setStroke(255);
  neptune.setTexture(img);
  endShape (CLOSE) ;
  
  stroke(0);
  img = loadImage("europa.jpg");
  beginShape ( ) ;
  europe = createShape (SPHERE,europer);
  europe.setStroke(255);
  europe.setTexture(img);
  endShape (CLOSE) ;
  
  //gifExport = new GifMaker(this, "export.gif");
  //gifExport.setRepeat(0);
}

void draw ( ) {
  background.resize(width,height);
  background(background);
  
  textSize(20);
  textAlign(LEFT);
  text("'p' = pausar/reanudar el programa.", 10, 30);
  translate(width/2, height/2, 0);
  rotateZ(radians(-7));
  
  //Sol
  textSize(40);
  pushMatrix();
  textAlign(CENTER);
  text("Sun", 0, -(sunr + sunr/4));
  rotateY(radians(ang));
  shape(sun);
  popMatrix();
  
  //Venus
  pushMatrix();
  rotateY(radians(currentVenusSpeed));
  translate(200, 0, 0) ;
  textSize(20);
  rotateY(radians(360 - currentVenusSpeed));
  textAlign(CENTER);
  text("Venus", 0, -(venusr + venusr/4));
  rotateY(radians(ang * 3));
  shape(venus);
  popMatrix();
  
  //Tierra
  pushMatrix();
  rotateY(radians(currentEarthSpeed));
  translate(300, 0, 0) ;
  textSize(20);
  rotateY(radians(360 - currentEarthSpeed));
  textAlign(CENTER);
  text("Earth", 0, -(earthr + earthr/4));
  rotateY(radians(ang * 4));
  shape(earth);
  popMatrix();
  
  //rotateX(0);
  //luna
  pushMatrix();
  rotateY(radians(currentEarthSpeed));
  translate(300, 0, 0) ;
  rotateY(radians(-currentMoonSpeed));
  translate((300) *0.12, 0, 0) ;
  textSize(10);
  rotateY(radians(360 - currentEarthSpeed + currentMoonSpeed));
  textAlign(CENTER);
  text("Moon", 0, -(moonr + moonr/4));
  rotateY(radians(ang * 5));
  shape(moon);
  popMatrix();
  
  //Marte
  pushMatrix();
  rotateY(radians(currentMarsSpeed));
  translate(450, 0, 0) ;
  textSize(20);
  rotateY(radians(360 - currentMarsSpeed));
  textAlign(CENTER);
  text("Mars", 0, -(Marsr + Marsr/4));
  rotateY(radians(ang * 4));
  shape(Mars);
  popMatrix();
  
  
  //Júpiter
  pushMatrix();
  rotateY(radians(currentJupiterSpeed));
  translate(700, 0, 0) ;
  textSize(30);
  rotateY(radians(360 - currentJupiterSpeed));
  textAlign(CENTER);
  text("Jupiter", 0, -(jupiterr + jupiterr/4));
  rotateY(radians(ang * 2));
  shape(jupiter);
  popMatrix();
  
  //Europa
  pushMatrix();
  rotateY(radians(currentJupiterSpeed));
  translate(700, 0, 0) ;
  rotateY(radians(-currentEuropeSpeed));
  translate((700) *0.1, 0, 0) ;
  textSize(20);
  rotateY(radians(360 - currentJupiterSpeed + currentEuropeSpeed));
  textAlign(CENTER);
  text("Europe", 0, -(europer + europer/4));
  rotateY(radians(ang));
  shape(moon);
  popMatrix();
  

  //Neptuno
  pushMatrix();
  rotateY(radians(currentNeptuneSpeed));
  translate(900, 0, 0) ;
  textSize(40);
  rotateY(radians(360 - currentNeptuneSpeed));
  textAlign(CENTER);
  text("Neptune", 0, -(neptuner + neptuner/4));
  rotateY(radians(ang));
  shape(neptune);
  popMatrix();
  
  
  if(isPaused) return;
  ang ++;
  if(ang > 360) ang = 0;
  
  currentVenusSpeed += venusSpeed;
  if(currentVenusSpeed > 360) currentVenusSpeed = 0;
  
  currentEarthSpeed += earthSpeed;
  if(currentEarthSpeed > 360) currentEarthSpeed = 0;
  
  currentMoonSpeed += moonSpeed;
  if(currentMoonSpeed > 360) currentMoonSpeed = 0;
  
  currentMarsSpeed += marsSpeed;
  if(currentMarsSpeed > 360) currentMarsSpeed = 0;
  
  currentJupiterSpeed += jupiterSpeed;
  if(currentJupiterSpeed > 360) currentJupiterSpeed = 0;
  
  currentNeptuneSpeed += neptuneSpeed;
  if(currentNeptuneSpeed > 360) currentNeptuneSpeed = 0;
  
  currentEuropeSpeed += europeSpeed;
  if(currentEuropeSpeed > 360) currentEuropeSpeed = 0;
  
  /*if(framesGif > 4){
    gifExport.addFrame();
    framesGif = 0;
  }
  framesGif++;*/
}


void keyPressed(){
  /*if(key == 's'){
    gifExport.finish();
  }*/
  
  if(key == 'p'){
    isPaused = !isPaused;
  }
}
