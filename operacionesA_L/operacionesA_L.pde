PImage img, img1, imgcopia, imgcopia1; 
color c;

void setup(){
  size(840, 360);
  img = loadImage("tele.jpg");
  img1 = loadImage("tele1.jpg");

}

void draw(){ 
  noLoop();
  background(0);
  color p;
  color p1;

  imgcopia = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
        c = getPixel(img, x, y);
        p = getPixel(img1, x, y);
        p1 = c & p;
        putPixel(imgcopia, x, y, p1);
   
     }
  }
 
  image(imgcopia, 0, 0);
}