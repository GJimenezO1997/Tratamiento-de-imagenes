PImage img;
PImage imgcopia, imgcopia1, imgcopia2, imgcopia3, imgcopia4;
void setup(){
  img = loadImage("red.PNG");
  size(1800,1500);
}
void draw(){
  noLoop();
  float R, G, B, Gris, GrisP;
  imgcopia = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        Gris = ( (0.299  * getPixelR(img, x, y)) + (0.587 * getPixelG(img, x, y)) + (0.14 * getPixelB(img, x, y)));
        putPixel(imgcopia, x, y, Gris, Gris, Gris);
     }
  }
  imgcopia1 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        R = getPixelR(img, x, y);
        putPixel(imgcopia1, x, y, R, R, R);
     }
  }
  imgcopia2 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        G = getPixelG(img, x, y);
        putPixel(imgcopia2, x, y, G, G, G);
     }
  }
  imgcopia3 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        B = getPixelB(img, x, y);
        putPixel(imgcopia3, x, y, B, B, B);
     }
  }
  
  imgcopia4 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        R = getPixelR(img, x, y);
        G = getPixelG(img, x, y);
        B = getPixelB(img, x, y);
        GrisP = ((R + G + B)/3);
        putPixel(imgcopia4, x, y, GrisP, GrisP, GrisP);
     }
  }
  image(img, 0, 0);
  image(imgcopia, img.width + 10, 0);
  //image(imgcopia1, 0, imgcopia.height + 10);
  //image(imgcopia2, img.width + 10, imgcopia.height + 10);
  //image(imgcopia3, imgcopia1.width + 10, 0);
  //image(imgcopia4, imgcopia1.width + 10, imgcopia3.height + 10);
  

}