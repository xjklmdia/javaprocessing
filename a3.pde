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
  int i = 0;
  int x =0;
  
if(keyPressed == true)
  if((key == 's')||(key == 'S')){
drawSecondsHand(s);
  } else if (keyPressed == false){
 background(200);}
 
drawMinutesHand(s,m);
drawHoursHand(m,h);
centerPin();
drawName();
drawNumbers(i);
drawTicks(x);
}

/*------------------------------------------------------------------------------*/


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
    text("CMPT166",-35,150);
    text("Jonathan",-35,-150);
  }
  
  void drawNumbers(int i){
    //textAlign(CENTER,CENTER);
    for (i=0; i<12; ++i) {
      pushMatrix();
        rotate(radians(i*30));
        pushMatrix();
          translate(0,-width*.39);
          rotate(-radians(i*30));
          text(i==0?12:i,0,0); // ? is conditional if else
                           // result = i==0 [if] 12 [else] i,0,0
        popMatrix();
      popMatrix();
    }
  }
  
  void drawTicks(int x){
        stroke(0);
        scale(1.1,1.1);
        strokeWeight(2);
        for (x=0; x<60; ++x){
      pushMatrix();
        rotate(radians(x*6));
        line(width*.39,0,width*.42,0);
      popMatrix();
    }
    strokeWeight(1);
  }
