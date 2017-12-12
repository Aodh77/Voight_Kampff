class topbar
{
  int x, y;
  int rectNum;
  float interval;
  int count;
  int xinc;
  
  topbar()
  {
    rectNum = 12;
    interval = (width/2)/rectNum;
    x = width/2;
    y = 0;
    xinc = 6;
  }
  
  void update()
  {
    if(x > width-(width/4) || x < width/2)
    {
      xinc*=-1;
    }
  }
  void render()
  {
    fill(0, 255, 0);
    for( int i = 0; i < rectNum; i++)
    {
      if(i > 6)
      {
        fill(255, 125, 0);
      }
      if(i > 8)
      {
        fill(255, 0, 0);
      }
      rect((width/4)+i*interval, 0, interval, 20);
    }
    
    fill(0);
    stroke(0);
    rect(x, y, interval*(rectNum/2), 20);
    x+=xinc;
  }
}