public void setup()
{
size(400,400);
 background(255);
}
public void draw()
{
}
public void mouseDragged()//optional
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
public void sierpinski(int x, int y, int yovanne) 
{

  if(yovanne <= 20) {
   fill((int)(Math.random()255),(int)(Math.random()255),(int)(Math.random()*255));
   triangle(x,y,x+yovanne,y,x+yovanne/2,y-yovanne); 

  }

  else{
   sierpinski(x,y,yovanne/2);
    sierpinski(x+yovanne/2,y,yovanne/2);
    sierpinski(x+yovanne/4,y-yovanne/2,yovanne/2);


  }

}
