
import processing.sound.*;
SoundFile file1, file2;
eye_display eye_display1, eye_display2;
layout layout1;
Vitals v1, v2;
Instructions Instructions1, Instructions2, LeonIn, RachaelIn, LeonData, RachaelData, VitalSigns, Welcome;
topbar topbar1;
float xpos;
float ypos;
int rectx1, recty1, rectx2, recty2;
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
  Instructions1 = new Instructions("Press Z to play test archive", width/2 - width/8, height/2 + height/4);
  Instructions2 = new Instructions("Press X to stop archive", width/2 - width/8, height/2 + height/3);
  LeonIn = new Instructions("Leon", height/8 - height/20, width/2 + width/10 - width/40);
  RachaelIn = new Instructions("Rachael", height/8 - height/20, width/2 - width/10 - width/40  );
  LeonData = new Instructions("Replicaint[M] Des:LEON NEXUS 6  Incept Date:10APRIL.2017  Func:Combat Phys: LEV.A Ment: LEV.C", width - width/4 + width/100, width/50, width/4, height/2);
  RachaelData = new Instructions("Replicaint[F] Des:RACHAEL NEXUS 7 Incept Date:May 23, 2018 Func:Experimental LEV.C Ment: LEV.A", width - width/4 + width/200, width/50, width/4, height/2);
  VitalSigns = new Instructions("Vitals Signs Monitor", width - width/5, height/2);
  Welcome = new Instructions("This is the LAPD VOIGHT-KAMPFF Test archive, welcome officer[K]", width/100, width/50, width/4, height/2);
  v1 = new Vitals(width - (width/4), beat1);
  v2 = new Vitals(width, beat2);
  layout1 = new layout();
  topbar1 = new topbar();
  background(51);
  rectx1 = width/4 - rectSize*3;
  rectx2 = width/4 - rectSize*3;
  recty1 = height/2;
  recty2 = height/2 + height/4;
}




void draw()
{
  background(0);
  xpos = width/4;
  ypos = 50;
  topbar1.update();
  topbar1.render();
  layout1.render();
  v1.render();
  v2.render();
  v1.update();
  v2.update();
  Instructions1.render();
  Instructions1.update();
  Instructions2.render();
  Instructions2.update();
  LeonIn.render();
  LeonIn.update();
  RachaelIn.render();
  RachaelIn.update();
  VitalSigns.render();
  VitalSigns.update();
  Welcome.render();
  Welcome.update();
  



  fill(123);
  if (!choice)
  {
    fill(255, 165, 0);
  }
  if (mouseX >= rectx1 && mouseX <= rectx1+rectSize && 
    mouseY >= recty1 && mouseY <= recty1+rectSize)
  {
    fill(0, 125, 255);
  }
  rect(rectx1, recty1, rectSize, rectSize);


  fill(123);
  if (choice)
    fill(255, 165, 0);
  if (mouseX >= rectx2 && mouseX <= rectx2+rectSize && 
    mouseY >= recty2 && mouseY <= recty2+rectSize)
  {
    fill(0, 125, 255);
  }
  rect(rectx2, recty2, rectSize, rectSize);
  if (choice)
  {
    eye_display1.display(xpos, ypos);
    LeonData.render();
    LeonData.update();
    RachaelData.count = 0;
  } else
  {
    eye_display2.display(xpos, ypos);
    RachaelData.render();
    RachaelData.update();
    LeonData.count = 0;
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
    } else
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


 