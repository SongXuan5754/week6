/*
Pieces:
1.canvas
2.Boundries / size of canvas
3.The position, radius of the ball
4.Motion of the ball: speed and direction
5.Bouncing of the ball at bountaries
  a. Derecting hitting the boundary
  b. Changing the direction of the ball
  
Let's add a second ball;
Make a class.
*/
int x;
int y;
int radius;
int xspeed;
int yspeed;

void setup() {
  size (500,500);
  radius = 5;
  x = 15;
  y = 15;
  xspeed = 3;
  yspeed = 4;
}

void draw (){
  background(255);
  ellipse(x,y,radius*2,radius*2);
  
  x= x+ xspeed;
  y= y+ yspeed;
  
  if (x+ radius >= width|| x-radius<= 0){
   xspeed = -xspeed;
  }
  if (y+ radius >= height|| y-radius<= 0){
   yspeed = -yspeed;
 }
}
