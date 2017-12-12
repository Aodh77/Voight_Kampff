
import processing.sound.*;
SoundFile file1, file2;
eye_display eye_display1, eye_display2;
layout layout1;
Vitals v1, v2;
float xpos;
float ypos;
int rectx1, recty1, rectx2, recty2;
boolean rectOver1 = false;
boolean rectOver2 = false;
int rectSize = 60;
int[] beat1 = {50, 80, 35, 60, 45, 50};
int[] beat2 = {50, 20, 80, 30, 60, 50};
boolean choice = true;

void setup()
{
  size (1000, 800);
  frameRate(24);
  eye_display1 = new eye_display("Leon_", 36);
  eye_display2 = new eye_display("Rachael_", 60);
  file1 = new SoundFile(this, "Leon_test.mp3");
  file2 = new SoundFile(this, "Rachael_test.mp3");
  v1 = new Vitals(width - (width/4), beat1);
  v2 = new Vitals(width, beat2);
  layout1 = new layout();
  background(0);
  rectx1 = width/4 - rectSize*3;
  rectx2 = width/4 - rectSize*3;
  recty1 = height/3;
  recty2 = height/4;
  
  
}




void draw()
{
  background(0);
  xpos = width/4;
  ypos = 50;
  //eye_display1.display(xpos, ypos);
  layout1.render();
  v1.render();
  v2.render();
  v1.update();
  v2.update();
  fill(123);
  if (mouseX >= rectx1 && mouseX <= rectx1+rectSize && 
      mouseY >= recty1 && mouseY <= recty1+rectSize)
      {
        fill(0, 125, 255);
      }
  rect(rectx1, recty1, rectSize, rectSize);
  
  fill(123);
  if (mouseX >= rectx2 && mouseX <= rectx2+rectSize && 
      mouseY >= recty2 && mouseY <= recty2+rectSize)
      {
        fill(0, 125, 255);
      }
  rect(rectx2, recty2, rectSize, rectSize);
  if (choice)
  {
     eye_display1.display(xpos, ypos);
  }
  else
  {
    eye_display2.display(xpos, ypos);
  }
  
  
}



void mousePressed()
{
  if (mouseX >= rectx1 && mouseX <= rectx1+rectSize && 
      mouseY >= recty1 && mouseY <= recty1+rectSize)
      {
        choice = false;
        file1.stop();
      }
  if (mouseX >= rectx2 && mouseX <= rectx2+rectSize && 
      mouseY >= recty2 && mouseY <= recty2+rectSize)
      {
        choice = true;
        file2.stop();
      }
}

void keyPressed()
{
  if (key == 'z' || key == 'Z' )
  {
    if (choice)
    {
      file1.play();
    }
    else
    {
      file2.cue(40);
      file2.play();
    }
   
  }
  if (key == 'x' || key == 'X')
  {
    file1.stop();
    file2.stop();
  }
  
}