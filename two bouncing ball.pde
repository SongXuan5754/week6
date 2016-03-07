int Xspeed = 2;
int Yspeed = 4;// control the direction of circle
int Xspeedtwo = 5;
int Yspeedtwo = 6;
int size = 50;
int xPosition ;
int yPosition ;
int radius; 

int xtwo ;
int ytwo ;

void setup() {
  size (400, 400);

  ellipseMode(CENTER);// make sure it start at center
  xPosition = height/2;
  yPosition = width/2;
  xtwo= height/3;
  ytwo= height/3;
  radius= 25;
}

void draw() {
  background(255);
  fill(255);
   ellipse (xPosition,yPosition,size,size);// change the xposition of the ellipse, sets boundaries on the x axis
   
  
  xPosition = xPosition + Xspeed;
  yPosition = yPosition + Yspeed;
  
 
 
 if (xPosition-radius <= 0 || xPosition+radius >= width) {
   Xspeed = -Xspeed;
}
 if (yPosition- radius <= 0 || yPosition+radius >= height) {
   Yspeed = -Yspeed;
}


 fill(255);
   ellipse (xtwo,ytwo,size,size);
   xtwo= xtwo +Xspeedtwo;
   ytwo= ytwo +Yspeedtwo;
   
   if (xtwo- radius < 0 || xtwo+ radius > width) {
   Xspeedtwo = -Xspeedtwo;
}
 if (ytwo-radius < 0 || ytwo+radius > height) {
   Yspeedtwo = -Yspeedtwo;
}
}
