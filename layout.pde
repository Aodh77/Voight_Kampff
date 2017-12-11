class layout
{
  int rectW;
  int rectH;
  
  layout()
  {
    rectW = width/4;
    rectH = height;
  }
  
  void render()
  {
    fill(255);
    
    rect(0, 0 ,rectW, rectH);
    rect(width*0.75, 0, rectW, rectH);
    
  }
  
}