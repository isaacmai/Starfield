Particle[] Parts = new Particle[450];
void setup()
{
  //your code here
  size(500,500);
  for(int i = 0; i < Parts.length; i++)
  {
   Parts[i] = new Particle();
  }
  for(int i = 0; i < 5; i++)
  {
    Parts[i] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < Parts.length; i++)
  {
    Parts[i].show();
    Parts[i].move();
  }
}
//your code here
class Particle
{
  //your code here
  double myX, myY, myAngle, mySpeed,mySize;
  int myColor;
  Particle()
  {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = width/2;
    myY = height/2;
    mySpeed = (double)(Math.random()*7+1);
    myAngle = (double)(Math.random()*3)*Math.PI;
    mySize = 7;
  }
  void show()
{
  noStroke();
  fill(myColor);
  ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
}
void move()
{
   myX = myX + (double)(Math.cos(myAngle)*mySpeed);
      if (myX > 600) {myX = 250;  myY= 250;}
      else if (myX < 0) {myX = 250;   myY= 250;}
   myY = myY + (double)(Math.sin(myAngle)*mySpeed);
      if (myY>550){myY =250;  myX= 250;}  
      else if (myY < -100) {myY = 250;  myX= 250;}
}
}
class OddballParticle extends Particle {
  OddballParticle(){
  //your code here
  myX = width/2;
  myY = height/2;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  mySpeed = Math.random()*3;
  myAngle = (Math.random()*3)*Math.PI;
  mySize = 40;
  }
}
