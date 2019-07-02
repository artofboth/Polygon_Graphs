Polygon polygons;

int [] hours;


void setup() {
  size(640, 360);
  
  hours = new int[7];
  hours[0] = 4; //Category name
  hours[1] = 3; //Category name
  hours[2] = 2; //Category name
  hours[3] = 1; //Category name
  hours[4] = 4; //Category name
  hours[5] = 0; //Category name
  hours[6] = 3; //Category name
}

void draw() {
  background(102);
  polygons = new Polygon(width/2, height/2, 70, 7);
  
  polygons.measure();
}
