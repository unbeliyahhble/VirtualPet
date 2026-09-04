import processing.serial.*; 
import cc.arduino.*; 
Arduino arduino; 

void setup() { 
  size(400, 400); 
  background(216, 235, 255); 
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
} 

void draw() { 
  
  background(216, 235, 255); 

  int one = arduino.analogRead(1); 
  int six = arduino.analogRead(6); 
  
  color c; 
  if (one > 1000 && six > 1000) {
    c = color(160, 0, 255); 
  } else if (six > 1000) {
    c = color(0, 0, 255); 
  } else if (one > 1000) {
    c = color(0, 255, 0); 
  } else {
    c = color(255, 0, 0); 
  }

  //face 
  int x = 175; 
  int y = 220; 
  noStroke(); 
  fill(255, 255, 255); 
  ellipse(25+x, 0+y, 100, 100); 
  ellipse(0+x, 30+y, 80, 50); 
  ellipse(50+x, 30+y, 80, 50); 
  ellipse(25+x, 32+y, 130, 50); 
  
  //eyes & nose 
  x = 175; 
  y = 230; 
  noStroke(); 
  fill(0, 0, 0); 
  ellipse(0+x, 0+y, 10, 13); 
  ellipse(50+x, 0+y, 10, 13); 
  ellipse(25+x, 10+y, 13, 10); 
   
  //right ear 
  x = 225; 
  y = 125; 
  stroke(0, 0, 0); 
  fill(0, 0, 0); 
  bezier(25+x, 0+y, 25+x, 35+y, 20+x, 35+y, 0+x, 50+y); 
  bezier(25+x, 0+y, 5+x, 35+y, 0+x, 35+y, 0+x, 50+y); 
  
  //left ear 
  x = 105; 
  y = 165; 
  stroke(0, 0, 0); 
  fill(0, 0, 0); 
  bezier(0+x, 0+y, 25+x, 5+y, 20+x, 5+y, 55+x, 20+y); 
  bezier(0+x, 0+y, 10+x, 20+y, 20+x, 15+y, 55+x, 20+y); 
  
  //bow 
  x = 180; 
  y = 263; 
  noStroke(); 
  fill(c); 
  ellipse(200, 8+y, 15, 15); 
  triangle(0+x, 0+y, 20+x, 10+y, 0+x, 20+y); 
  triangle(400-x, 0+y, 380-x, 10+y, 400-x, 20+y); 
  
} 
