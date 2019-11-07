PImage img; 
PImage imgcopia;
PGraphics pg;

void setup(){
  size(2600, 2600);
  img = loadImage("tele.jpg");

}

void draw(){ 
  noLoop();
  background(0);
  image(img, 0, 0);
  
   imgcopia = createImage(img.width, img.height, RGB);
  color c;
  color p;
  color L = color(255, 250, 155);
  imgcopia = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
      c = getPixel(img, x, y);
      p = L - c;
      putPixel(imgcopia, x, y, p);
     }
     
  }
  
 
  
  image(img, 0, 0);
  image(imgcopia, img.width + 10, 0);
  //Recta(0, 12, 395, 132);

 
}


 