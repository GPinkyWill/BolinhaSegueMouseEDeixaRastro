int [] xpos = new int[50];
int [] ypos = new int[50];

void setup()
{
  size(500,500);
  smooth();
  for (int i = 0; i < xpos.length; i++)
  {
    xpos[i] = 0;
    ypos[i] = 0;
  }
  noCursor();
  println(xpos.length);
  
}

void draw()
{
  background (255);
  for (int i = 0; i < xpos.length-1; i++)
  {
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }
  
   xpos[xpos.length-1] = mouseX;
   ypos[ypos.length-1] = mouseY;
   
   for (int i = 0; i < xpos.length; i++)
   {
     noStroke();
     fill(255-i*5);
     ellipse(xpos[i], ypos[i], i, i);
   }
}
