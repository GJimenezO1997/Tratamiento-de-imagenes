PImage img;
PImage imgcopia, imgcopia1, imgcopia2;
float h = 276, s = .9, i = 0.15;
float Pi = 3.14159;

void setup(){
  img = loadImage("goku.jpg");
  size(1900,500);
 
}
public void draw(){
  noLoop();
  H();
  S();
  I();
}
public void H(){
  float h = 276, s = 0.15f, i = 0.15;
  float Pi = 3.14159f;
  float v;
  float r, g, b;
  float m;
  float sv;
  int sextant;
  float fract, vsf, mid1, mid2;

  r = i; 
  g = i;
  b = i;
  if ((i <= 0.5f)) 
      v = i * (1.0f + s + .1f);
    else 
      v = i + s - i * s;   
    m = i + i - v;
    sv = (v - m) / v;
    h /= 60.0f;
    sextant = floor(h);  
    fract = h - sextant;
    vsf = v * sv * fract;
    mid1 = m + vsf;
    mid2 = v - vsf;
    if (v > 0)
    {
        switch (sextant)
        {
            case 0: 
              r = v; g = mid1; b = m; 
            break;
            case 1: 
              r = mid2; g = v; b = m; 
            break;
            case 2: 
              r = m; g = v; b = mid1; 
            break;
            case 3: 
              r = m; g = mid2; b = v; 
            break;
            case 4: 
              r = mid1; g = m; b = v; 
            break;
            case 5: 
              r = v; g = m; b = mid2; 
            break;
        }
    }
 
  float R = r * 255, G = g * 255, B = b * 255;
  imgcopia = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){

      putPixel(imgcopia, x, y, getPixelR(img, x, y) + R, getPixelG(img, x, y) + G, getPixelB(img, x, y) + B);
     }
  }
  image(img, 0, 0);
  image(imgcopia, img.width + 10, 0);
}
public void S(){
  float h = 355, s = 1, i = 0.15;
  float Pi = 3.14159f;
  float v;
  float r, g, b;
  float m;
  float sv;
  int sextant;
  float fract, vsf, mid1, mid2;

  r = i; 
  g = i;
  b = i;
  if ((i <= 0.5f)) 
      v = i * (1.0f + s + .1f);
    else 
      v = i + s - i * s;   
    m = i + i - v;
    sv = (v - m) / v;
    h /= 60.0f;
    sextant = floor(h);  
    fract = h - sextant;
    vsf = v * sv * fract;
    mid1 = m + vsf;
    mid2 = v - vsf;
    if (v > 0)
    {
        switch (sextant)
        {
            case 0: 
              r = v; g = mid1; b = m; 
            break;
            case 1: 
              r = mid2; g = v; b = m; 
            break;
            case 2: 
              r = m; g = v; b = mid1; 
            break;
            case 3: 
              r = m; g = mid2; b = v; 
            break;
            case 4: 
              r = mid1; g = m; b = v; 
            break;
            case 5: 
              r = v; g = m; b = mid2; 
            break;
        }
    }
 
  float R = r * 255, G = g * 255, B = b * 255;
  imgcopia1 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){

      putPixel(imgcopia1, x, y, getPixelR(img, x, y) + R, getPixelG(img, x, y) + G, getPixelB(img, x, y) + B);
     }
  }
  image(imgcopia1, imgcopia.width + 410, 0);
}
public void I(){
  float h = 276, s = 0.2f, i = 0.45f;
  float Pi = 3.14159f;
  float v;
  float r, g, b;
  float m;
  float sv;
  int sextant;
  float fract, vsf, mid1, mid2;

  r = i; 
  g = i;
  b = i;
  if ((i <= 0.5f)) 
      v = i * (1.0f + s + .1f);
    else 
      v = i + s - i * s;   
    m = i + i - v;
    sv = (v - m) / v;
    h /= 60.0f;
    sextant = floor(h);  
    fract = h - sextant;
    vsf = v * sv * fract;
    mid1 = m + vsf;
    mid2 = v - vsf;
    if (v > 0)
    {
        switch (sextant)
        {
            case 0: 
              r = v; g = mid1; b = m; 
            break;
            case 1: 
              r = mid2; g = v; b = m; 
            break;
            case 2: 
              r = m; g = v; b = mid1; 
            break;
            case 3: 
              r = m; g = mid2; b = v; 
            break;
            case 4: 
              r = mid1; g = m; b = v; 
            break;
            case 5: 
              r = v; g = m; b = mid2; 
            break;
        }
    }
 
  float R = r * 255, G = g * 255, B = b * 255;
  imgcopia2 = createImage(img.width, img.height, RGB);
  for (int x =0; x< img.width; x++){
     for(int y= 0; y < img.height; y++){

      putPixel(imgcopia2, x, y, getPixelR(img, x, y) + R, getPixelG(img, x, y) + G, getPixelB(img, x, y) + B);
     }
  }
  image(imgcopia2, 0, 0);
}