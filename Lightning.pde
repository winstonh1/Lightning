int x = 200;
int y = 0;
boolean stop = false;

void setup()
{
  frameRate(40);
  size(400,400);
  background(0,0,0);
}

void draw()
{
  //fading
  fill(0,0,0,10);
  rect(0,0,410,410);
  

  //lightning
  if(stop == false)
  {
    stroke(255,255,0);
    int new_x = x + (int)(Math.random()*19)-9;
    int new_y = y + (int)(Math.random()*20);
    line(x, y, new_x, new_y);
    x = new_x;
    y = new_y;
  }
  if(y > 350)
  {
    stop = true;
  }
  
  //coulds
  noStroke();
  fill(120,120,120);
  for(int cloud_x = 0; cloud_x < 500; cloud_x += 50)
  {
    ellipse(cloud_x,0,(int)(Math.random()*70) + 50 ,(int)(Math.random()*70) + 25);
  }
  
  //ground 
  fill(130,80,10);
  rect(0, 350, 550, 350, 0, 400, 510, 400);
  
  fill(0);
  if(y > 350)
  {
    
    int hole_x = x; 
    
    arc(hole_x,350,20,20, 0, PI);
  }

}

void mousePressed()
{
  redraw();
  x = 200;
  y = 0;
  stop = false;
}
