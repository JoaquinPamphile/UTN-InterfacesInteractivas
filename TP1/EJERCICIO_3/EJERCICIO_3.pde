PImage img1;
PImage img2;

void setup(){
  size(400,400);
  img1 = loadImage("img.jpg");
  img1.resize(400,400);
  img2 = loadImage("kattegat.jpg");
  img2.resize(400,400);
}

void draw(){
  background(img2);
  tint(255,127);
  image(img1,0,0);
}
