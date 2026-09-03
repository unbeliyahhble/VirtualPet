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

  int five = arduino.analogRead(5); 
  int offset = 130 - five; 
  
  if (offset < 50) 
    offset = 0; 
  
  translate(0, offset*-1); 

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
  fill(255, 0, 0); 
  ellipse(200, 8+y, 15, 15); 
  triangle(0+x, 0+y, 20+x, 10+y, 0+x, 20+y); 
  triangle(400-x, 0+y, 380-x, 10+y, 400-x, 20+y); 

  translate(0, offset);
  
} 
