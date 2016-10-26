void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(255);


  // move origin to center of the screen
  translate(250, 250);
  // get the current time
  int s = second();  // values from 0 - 59
  int m = minute();  // values from 0 - 59
  int h = hour();    // values from 0 - 23
  
if(keyPressed == true)
  if((key == 's')||(key == 'S')){
drawSecondsHand(s);
  } else if (keyPressed == false){
 background(200); }
 
drawMinutesHand(s,m);
drawHoursHand(m,h);
centerPin();
//drawTitle();
drawName();
}
  // draw the seconds hand
  void drawSecondsHand(int s){
  pushMatrix();
  rotate(radians(map(s, 0, 59, 0, 360)));
  stroke(255, 0, 0);
  strokeWeight(1);
  line(0, 0, 0, -225);
  popMatrix();
  }
  // draw the minutes hand
  void drawMinutesHand( int s, int m){
  pushMatrix();
  rotate(radians(map(m + s / 60.0, 0.0, 60.0, 0.0, 360.0)));
  stroke(0, 0, 255);
  strokeWeight(5);
  line(0, 0, 0, -200);
  popMatrix();
  }
  // draw the hours hand
  void drawHoursHand(int m, int h){
  pushMatrix();
  if (h > 12) h -= 12;
  rotate(radians(map(h + m / 60.0, 0.0, 12, 0.0, 360.0)));
  strokeWeight(5);
  stroke(0, 255, 0);
  line(0, 0, 0, -100);
  popMatrix();
  }
  // "pin" at the center
  void centerPin(){
  fill(0);
  noStroke();
  ellipse(0, 0, 15, 15);
  }
  void drawName(){
    textSize(18);
    fill(0,0,0);
    text("CMPT166",-45,150);
    text("Jonathan",-45,-150);
  }
//  void drawTitle(){
//textSize(18);
//    fill(0,0,0);
//    text("Jonathan",-45,-150);
 // }