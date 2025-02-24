void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(#e9e1d6);
  translate(width/2, height/2);
  
  float aSeg = map(second(), 0, 60, 0, TWO_PI); 
  float aMin = map(minute(), 0, 60, 0, TWO_PI); 
  float aHoras   = map(hour() % 12, 0, 12, 0, TWO_PI);  
  
  
  // elipses horas
  pushMatrix();
  rotate(aHoras);
  fill(255, 85, 178, 170);
  ellipse(-123, -123, 245, 245);
  ellipse(123, -123, 245, 245);
  ellipse(-123, 123, 245, 245);
  ellipse(123, 123, 245, 245);
  popMatrix();
  
  
  //elipses min
    pushMatrix();
  rotate(aMin);
  fill(0, 170, 58, 170);
  ellipse(0, -96, 122, 190);  
  ellipse(94, 0, 190, 122);  
  ellipse(0, 94, 122, 190);  
  ellipse(-96, 0, 190, 122);  
  popMatrix();
  
  //elipses sec
  pushMatrix();
  rotate(aSeg);
  fill(55, 109, 244, 170);
  ellipse(0, -191, 164, 50);
  ellipse(189, 0, 50, 164);
  ellipse(0, 189, 164, 50);
  ellipse(-191, 0, 50, 164);
  popMatrix();
}
