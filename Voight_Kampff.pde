//TODO: white gap

eye_display eye_display1;
layout layout1;
Vitals v1, v2;
float xpos;
float ypos;

void setup()
{
  size (1000, 800);
  frameRate(24);
  eye_display1 = new eye_display("Leon_", 36);
  v1 = new Vitals(width - (width/4), beat1);
  v2 = new Vitals(width, beat2);
  layout1 = new layout();
  background(0);
  
}


  int[] beat1 = {50, 80, 35, 60, 45, 50};
  int[] beat2 = {50, 20, 80, 30, 60, 50};

void draw()
{
  background(0);
  xpos = width/4;
  ypos = 50;
  eye_display1.display(xpos, ypos);
  layout1.render();
  v1.render();
  v2.render();
  v1.update();
  v2.update();
  
}