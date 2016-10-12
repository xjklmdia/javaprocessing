PShape bottle1,bottle2,bottle3,cork1,cork2,cork3;
float value = random(255)+random(100);
float corkx = value+35 ;
float corky = 550;
void setup(){
size(1000,1000);
bottle1 = loadShape("bottle1.svg");
bottle2 = loadShape("bottle2.svg");
bottle3 = loadShape("bottle3.svg");
//cork1 = createShape(RECT,value+35,550,corkv,50);

}

void draw(){
  background(200);
  //shape(cork1);
//float bottleconstrainx = constrain();
//float bottleconstrainy = constrain();
  fill(#502A2A);
    rect(value+35,corky,25,45);
shape(bottle1,value,450,100,500);
 // shape(cork1,value)
//  shape(bottle2,150,450,100,500);
//  shape(bottle3,250,450,100,500);
}

void keyPressed(){
if(value ==0){
value =0 + random(300);
} else { 
value =0;}
}

void mousePressed(){
 if(corky == 550)
 {corky = 1000  ;
 } else {
 corkx =550;}
 }