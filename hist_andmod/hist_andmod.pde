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
  color c1; color c2, c3;
  
  imgcopia = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){
      
        c1 = (int)getPixelR(img, x, y);
        c2 = (int)getPixelG(img, x, y);
        c3 = (int)getPixelB(img, x, y);
   
        putPixel(imgcopia, x, y, 2+(c1 - 18)*((255-2)/(255-18)), 2+(c2 - 18)*((255-2)/(255-18)),2+(c3 - 18)*((255-2)/(255-18)));
        
          
     }
  }
 
  image(img, 0, 0);

   int[] array = new int[256];
  for (int i = 0; i < imgcopia.width; i++) {
    for (int j = 0; j < imgcopia.height; j++) {
      int maxInten = int(red(get(i, j)));
      array[maxInten]++; 
    }
  }
  
  int array2 = max(array);
  stroke(0,255,0);
 
  for (int i = 0; i < imgcopia.width; i += 2) {
    
    int y1 = int(map(i, 0, imgcopia.width, 0, 255));
    int y = int(map(array[y1], 0, array2, imgcopia.height, 0));
    line(i + 400, imgcopia.height, i + 400, y);
  }

}