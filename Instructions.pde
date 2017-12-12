class Instructions
{
  String z, w;
  int x, y, count;
  
  
  Instructions(String z, int x, int y)
  {
    this.z = z;
    this.x = x;
    this.y = y;
    count = 0;
    w = "";
  }
  
   void update()
  {
   if ( count < z.length())
   {
   count++;
   }
   
  }
  
  void render()
  {
    textSize(15);
    fill(0,128,0);
    for(int i = 0; i< count; i++)
    {
      w = w + z.charAt(i);
    }
    text(w, x, y);
    w = "";
  }
} 