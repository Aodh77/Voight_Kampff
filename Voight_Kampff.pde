void setup()
{
  size (1200, 1200);
  frameRate(24);
  eye_display1 = new eye_display("Leon_", 36);
  background(0);
}

eye_display eye_display1;

float xpos;
float ypos;

void draw()
{
  xpos = 300;
  ypos = 50;
  eye_display1.display(xpos, ypos);
  
}