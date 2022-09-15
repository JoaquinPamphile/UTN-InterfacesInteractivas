PImage img;
void setup(){
  size(400,400);
  img = loadImage("img.jpg");
  img.resize(400,400);
}

//Ejercicio 1 - Transforamción que impacte en los canales de color
void draw() {
  loadPixels();
  img.loadPixels();
  // Se itera por cada pixel de la imagen
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      //obtenemos la ubicación del pixel 
      int loc = x + y*img.width;
      // Valores R,G,B 
      float r = red   (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue  (img.pixels[loc]);
      if (x%2 == 0){ //A los pixeles pares se les cambia el valor de r
          color c = color(187,g,b);
          pixels[loc] = c;
      } else { //A los pixeles impares se les cambia el valor de g
          color c = color(r,27,b);
          pixels[loc] = c;
      }
    }
  }
  // Actualizamos los pixeles de la imagen a la nueva paleta
  updatePixels();
}
