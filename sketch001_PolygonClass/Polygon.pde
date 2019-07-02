class Polygon {

  int addNumbers(int num1, int num2){
 int result = num1 + num2;
 return (result);
}
  
  Polygon(float x, float y, float radius, int npoints)
  {
    
    
println(addNumbers(1, 2));

    float angle = TWO_PI / npoints;
    beginShape();
      for (float a = 0; a < TWO_PI; a += angle)
      {
        float sx = x + cos(a) * radius;
        float sy = y + sin(a) * radius;
        vertex(sx, sy);
      }
    endShape();
   

    
    for(int i=0; i<7; i++)
        {
          int progress = hours[i];
         // println(progress);
          if (progress < 4)
          {
            ellipse (x,y,20,20);
            //println("hello");
          }
        }
    
  }
  
  void measure(){

  }

}
