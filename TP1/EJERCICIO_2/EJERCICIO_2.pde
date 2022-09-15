PImage img;


void setup() {
  size(400, 400);
  img = loadImage("img.jpg"); 
  img.resize(400,400);
}


void draw() {
  image(img, 0, 200, 200, img.height/2);
  image(img, 200, 200, img.width/2, img.height/2);
  image(img, 0, 0, img.width/2, img.height/2);
  image(img, 200, 0, img.width/2, img.height/2);

}
