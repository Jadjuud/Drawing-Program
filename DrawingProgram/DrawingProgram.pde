//Global Variables  //<>//
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
Boolean draw=false;
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
    ColorSelector1 = pink; //<>//
  }
    
  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1*2 && mouseY<ColourY1*3+ColourdisplayHeight1) {
    ColorSelector1 = blue;
  } 
  
}//End mousePressed()

void keyPressed() {

  if (keyCode == ESC) //other keycode values under this link: https://processing.org/reference/keyCode.html
  {
    exit();
  }
}//End keyPressed
