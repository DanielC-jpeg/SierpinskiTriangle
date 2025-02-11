public void setup()
{
size(400,400);
 background(255);
}
public void draw()
{
}
public void mouseDragged()
{
  sierpinski((int)(Math.random()400),(int)(Math.random()400),(int)(Math.random()255));

}


void mousePressed() {
  if (mouseButton == LEFT) {
   sierpinski((int)(Math.random()400),(int)(Math.random()400),(int)(Math.random()255));
  } else if (mouseButton == RIGHT) {
    background(255);
  }
}
public void sierpinski(int x, int y, int hi) 
{

  if(hi <= 20) {
   fill((int)(Math.random()255),(int)(Math.random()255),(int)(Math.random()*255));
   triangle(x,y,x+hi,y,x+hi/2,y-hi); 

  }

  else{
   sierpinski(x,y,hi/2);
    sierpinski(x+hi/2,y,hi/2);
    sierpinski(x+hi/4,y-hi/2,hi/2);


  }

}
