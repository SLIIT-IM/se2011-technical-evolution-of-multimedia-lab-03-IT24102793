//3
int fuelY;
int speed = 4;
float fuelX;

void setup() {
  size(400, 400);
  fuelY = height;
  fuelX = random(20, width - 20);
}

void draw() {
  background(20, 24, 43);

  fill(255, 255, 200);
  noStroke();
  ellipse(fuelX, fuelY, 30, 30);
  
  fuelY = fuelY - speed;

  float collectorX = mouseX;
  
  if (collectorX < 40) collectorX = 40;
  if (collectorX > width - 40) collectorX = width - 40;

  fill(255, 200, 0);
  rect(collectorX - 40, 30, 80, 15, 5);

  if (fuelY < 45 && fuelY > 20 && abs(fuelX - collectorX) < 45) {    
    resetFuel();          
  }

  if (fuelY < 0) {
    resetFuel();
  }
}

void resetFuel() {
  fuelY = height;
  fuelX = random(20, width - 20); 
  speed = int(random(3, 7));       
}
