PImage img;
PShape s;

void setup(){
  size(600, 600, P3D);
  background(0);
  noStroke();
  img = loadImage("Skull.jpg");
  s = loadShape("12140_Skull_v3_L2.obj");
}

void draw(){
  directionalLight(126, 126, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  pointLight(51, 102, 126, 140, 160, 144);

  translate(280, 340, 0); 
  rotateY(PI/5);
  box(160);
  translate(280, 0, 0);
  sphere(120);
  translate(-280, -130, 80);
  rotateY(PI/3);
  box(100);
  scale(5);
  translate(100, -110, 80);
  shape(s, 80, 80);
}
