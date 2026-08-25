void setup() { 
  size(400, 400); 
  background(216, 235, 255); 
} 

void draw() { 
  
  //face 
  noStroke(); 
  fill(255, 255, 255); 
  ellipse(200, 200, 100, 100); 
  ellipse(175, 230, 80, 50); 
  ellipse(225, 230, 80, 50); 
  ellipse(200, 232, 130, 50); 
  
  //eyes & nose 
  noStroke(); 
  fill(0, 0, 0); 
  ellipse(175, 210, 10, 13); 
  ellipse(225, 210, 10, 13); 
  ellipse(200, 220, 13, 10); 
   
  //right ear 
  int x = 225; 
  int y = 105; 
  stroke(0, 0, 0); 
  fill(0, 0, 0); 
  bezier(25+x, 0+y, 25+x, 35+y, 20+x, 35+y, 0+x, 50+y); 
  bezier(25+x, 0+y, 5+x, 35+y, 0+x, 35+y, 0+x, 50+y); 
  
  //left ear 
  int x2 = 105; 
  int y2 = 145; 
  stroke(0, 0, 0); 
  fill(0, 0, 0); 
  bezier(0+x2, 0+y2, 25+x2, 5+y2, 20+x2, 5+y2, 55+x2, 20+y2); 
  bezier(0+x2, 0+y2, 10+x2, 20+y2, 20+x2, 15+y2, 55+x2, 20+y2); 
  
  //bow 
  int x3 = 180; 
  int y3 = 243; 
  noStroke(); 
  fill(255, 0, 0); 
  ellipse(200, 255, 15, 15); 
  triangle(0+x3, 0+y3, 20+x3, 10+y3, 0+x3, 20+y3); 
  triangle(400-x3, 0+y3, 380-x3, 10+y3, 400-x3, 20+y3); 
  
} 
