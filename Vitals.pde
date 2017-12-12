class Vitals
{
  int rectW;
  int rectH;
  int x, y;
  int[] data;
  
  Vitals(int x, int[] data)
  {
    this.data = data;
    this.x = x;
    y = height/2;
    rectW = width/4;
    rectH = height/4;
  }
  
  void update()
  {
    x+=14;
    if(x > width)
    {
      x = width - (width/2) + (width/40);
    }
  }
  
  void render()
  {
    fill(0);
    stroke(0);
    rect(x, y, rectW, rectH);
    int interval = rectW/data.length;
    float lastx, lasty;
    float nextx, nexty;
    
    
    
    stroke(255, 0, 0);
    lasty = map(50, 0, 100, 0, rectH);
    lastx = 0;
    for(int i = 0; i<data.length; i++)
    {
      nexty = map(data[i], 0, 100, 0, rectH);
      nextx = (i+1)*interval;
      
      line(x+lastx,y + rectH - lasty, x+nextx, y + rectH - nexty);
      
      lastx = nextx;
      lasty = nexty;
    }
    fill(0);
    stroke(255);
    rect(rectW, rectH*2, rectW*2, rectH*2);
  }
  
}