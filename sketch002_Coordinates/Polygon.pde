class Polygon {

 int addNumbers(int num1, int num2){
 int result = num1 + num2;
 return (result);
  }
  
  Polygon(float x, float y, float radius, int npoints)
  {

    float angle = TWO_PI / npoints;
    
    beginShape();
      for (float a = 0; a < TWO_PI; a += angle)
      {
        float sx = x + cos(a) * radius;
        float sy = y + sin(a) * radius;
        vertex(sx, sy);
      }
    endShape();
    
  }

}
