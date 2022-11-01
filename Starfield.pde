//your code here
class Particle
{
  //your code here
  double myX, myY;
  int myColor;
  double mySpeed, myAngle;
  Particle()
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = width/2;
    myY = height/2;
    mySpeed = (double)(Math.random()*10+1);
    myAngle = (double)(Math.random()*3)*Math.PI;
  }
  void show()
{
  noStroke();
  fill(myColor);
  ellipse((int)myX,(int)myY,6,6);
}
void move()
{
   myX = myX + Math.cos(myAngle*mySpeed);
   myY = myY + Math.sin(myAngle*mySpeed);
}
}
class OddballParticle //inherits from Particle
{
  //your code here
}
Particle[] Parts = new Particle[300];
void setup()
{
  //your code here
  size(500,500);
  for(int i = 0; i < Parts.length; i++)
  {
   Parts[i] = new Particle();
  }
}
void draw()
{
  background(0);
  fill(255,255,255,10);
  for(int i = 0; i < Parts.length; i++)
  {
    Parts[i].show();
    Parts[i].move();
  }
}
