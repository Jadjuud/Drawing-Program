//Global Variables 
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
Boolean draw=false;
float drawingDiameter;

void setup() {
  fullScreen();
  population();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
}//End setup()

void draw() {
  if ( draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfacedisplayWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfacedisplayHeight)
  {
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
    //line(mouseX, mouseY, pmouseX, pmouseY);
  }//End line draw
}//End draw()

void mousePressed() {
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfacedisplayWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfacedisplayHeight);
  {
    if ( draw == false)
    {
      draw = true;
    } else {
      draw = false;
    }//End draw boolean
  }//End line draw
  }//End mousePressed()

  void keyPressed() {
  }//End keyPressed
