int npoints =7;
//float radius =200;
float x = 0;
float y = 0;

int [] hours;

void keyPressed() {
 if (keyCode == ENTER) {
 saveFrame("screen-####.png");
 }
}

void setup() {
  
  size(800, 800);
  strokeWeight(3);
  noFill();
  x = width/2;
  y = height/2;
  
  hours = new int[7];
  hours[0] = 4; //Category name
  hours[1] = 3; //Category name
  hours[2] = 2; //Category name
  hours[3] = 1; //Category name
  hours[4] = 5; //Category name
  hours[5] = 1; //Category name
  hours[6] = 5; //Category name
    
}

float a(int pos){
  float angle = TWO_PI / npoints;
  float a = 0;
  a += angle*pos;
  return a;
}

int radius(int size){
  int radius = 0;
  radius = (width/10) * size;
  return radius;
}

float sx (int pos, int radius){
  float sx = x + cos(a(pos)) * radius;
  return sx;
}

float sy (int pos, int radius){
  float sy = y + sin(a(pos)) * radius;
  return sy;
}

void draw() {
  
  background(255);
  
  graph (4);
  graph (3);
  graph (2);
  graph (1);
  test();
  
}


//function to draw the heptagons at different sizes.
void graph(int size) {
  int radius = 0;
  radius = (width/10) * size;

  stroke(0, 0, 0);
  beginShape();
    for (int i = 0; i<7; i++) {
    vertex(sx(i, radius), sy(i, radius) );
    
    // draws an ellipse according to hours on each category. 
    if(hours[i]==size){
        //ellipse(sx(i, radius), sy(i, radius), 20, 20);
      }
    }

  endShape(CLOSE);

}

void test() {
  //int radius = 0;
  //radius = (width/10) * 1;

  
  beginShape();
  
  //ellipse(sx(1, radius(hours[0])), sy(1, radius(hours[0])), 20, 20);
  stroke(255, 0, 0);
  
  curveVertex(sx(1, radius(hours[1])), sy(1, radius(hours[1])));
  
  curveVertex(sx(1, radius(hours[0])), sy(1, radius(hours[0])));
  curveVertex(sx(2, radius(hours[1])), sy(2, radius(hours[1])));
  curveVertex(sx(3, radius(hours[2])), sy(3, radius(hours[2])));
  curveVertex(sx(4, radius(hours[3])), sy(4, radius(hours[3])));
  curveVertex(sx(5, radius(hours[4])), sy(5, radius(hours[4])));
  curveVertex(sx(6, radius(hours[5])), sy(6, radius(hours[5])));
  curveVertex(sx(7, radius(hours[6])), sy(7, radius(hours[6])));
  curveVertex(sx(1, radius(hours[0])), sy(1, radius(hours[0])));
   
  curveVertex(sx(1, radius(hours[1])), sy(1, radius(hours[1])));
       

  endShape(CLOSE);

}
