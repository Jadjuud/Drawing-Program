//Global Variables  //<>// //<>//
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
Boolean draw=false;
Boolean erase=false;
float drawingDiameter;
int i=0;

void setup() {
  fullScreen();
  population();
  quitButtonsetup();
  textSetup();

  //the drawing surface
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
  //noLoop();
}//End setup()

void draw() {
  quitButtonDraw();
  SmallBoxColorSelector();
  SmallBoxColorSelector2();
  SmallBoxColorSelector3();
  SmallBoxColorSelector4();
  SmallBoxColorSelector5();
  SmallBoxColorSelector6();
  SmallBoxColorSelector7();
  SmallBoxColorSelector8();
  SmallBoxColorSelector9();
  SmallBoxColorSelector10();
  SmallBoxColorSelector11();
  SmallBoxColorSelector12();
  DrawGrid();
  ColorSelectordraw();


  //ChangeColorDraw();

  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfacedisplayWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfacedisplayHeight)
  {

    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
    line(mouseX, mouseY, pmouseX, pmouseY);
  }//End line draw
}//End draw()

void mousePressed() {
  quitButtonMousePressed();
  //
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfacedisplayWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfacedisplayHeight);
  {
    if ( draw == false)
    {
      draw = true;
    } else {
      draw = false;
    }//End draw boolean
  }//End line draw

  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1 && mouseY<ColourY1+ColourdisplayHeight1) {
    ColorSelector1 = black;
  } 

  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*2 && mouseY<ColourY1*2+ColourdisplayHeight1) {
    ColorSelector1 = pink;
  }

  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*3 && mouseY<ColourY1*3+ColourdisplayHeight1) {
    ColorSelector1 = blue;
  }

  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*4 && mouseY<ColourY1*4+ColourdisplayHeight1) {
    ColorSelector1 = green;
  } 

  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*5 && mouseY<ColourY1*5+ColourdisplayHeight1) {
    ColorSelector1 = yellow;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1 && mouseY<ColourY1+ColourdisplayHeight1) {
    ColorSelector1 = red;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1*2 && mouseY<ColourY1*2+ColourdisplayHeight1) {
    ColorSelector1 = purple;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1*3 && mouseY<ColourY1*3+ColourdisplayHeight1) {
    ColorSelector1 = lightblue;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1*4 && mouseY<ColourY1*4+ColourdisplayHeight1) {
    ColorSelector1 = lightgreen;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1*5 && mouseY<ColourY1*5+ColourdisplayHeight1) {
    ColorSelector1 = orange;
  }
  //
  if (mouseX>ColourX1*1.12 && mouseX<ColourX1*1.12+ColourdisplayWidth1 && mouseY>ColourY1*0 && mouseY<ColourY1*0+ColourdisplayHeight1) {
    ColorSelector1 = white;
  }
  //
  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*0 && mouseY<ColourY1*0+ColourdisplayHeight1) {
    ColorSelector1 = grey;
  }
  //
}//End mousePressed()
//


void keyPressed() {

  if (keyCode == ESC) //other keycode values under this link: https://processing.org/reference/keyCode.html
  {
    exit();
  }
  //
  if(keyCode == ENTER && erase == true) {
    
      background(255);
  }
}//End keyPressed
