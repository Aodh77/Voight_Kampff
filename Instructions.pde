class Instructions
{
  String z, w;
  int x, y, count;
  int txtw, txth ;
  
  
  
  Instructions(String z, int x, int y)
  {
    this.z = z;
    this.x = x;
    this.y = y;
    count = 0;
    w = "";
    txtw = txth = 0;
    
  }
  Instructions(String z, int x, int y, int txtw, int txth)
  {
    this.z = z;
    this.x = x;
    this.y = y;
    count = 0;
    w = "";
    this.txtw = txtw;
    this.txth = txth;
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
    if (txtw == 0 || txth == 0)
    {
    text(w, x, y);
    }
    else
    {
      text(w, x, y, txtw, txth);
    }
    w = "";
    
  }
} 