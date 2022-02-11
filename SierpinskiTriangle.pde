public void setup()
{
  size(400, 400);
}
public void draw()
{
  background(0);
  sierpinski(5, 387, 400);
}
public void mouseDragged()//optional
{
}
public void mouseClicked()
{
  int randomColorR = (int)((Math.random()*225)+30);
  int randomColorG = (int)((Math.random()*225)+30);
  int randomColorB = (int)((Math.random()*225)+30);
  fill(randomColorR, randomColorG, randomColorB);
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=20)
    triangle(x,y,x+(len/2),y+len,x-(len/2),y+len);
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y-(len/2), len/2);
  }
}
