public void setup()
{
size(500,500);
background(255,20,147);
}
public void draw()
{

sierpinski(50,450,400);
  
}
public void sierpinski(int x, int y, int len) 
{
if(len <= 20){
triangle(x,y,x+len,y,x+len/2,y-len);
}
else{
sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);
}
}
public void keyPressed(){
  int myColor = color(255,((int)(Math.random()*256)),((int)(Math.random()*256)));
  if(key == ' ')
  fill(myColor);
  if(key == 'a')
  stroke(myColor);
}
