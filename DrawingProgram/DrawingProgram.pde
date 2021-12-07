//Global Variables 
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
Boolean draw=false;

void setup() {
  fullScreen();
  population();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
}//End setup()

void draw() {
  if ( draw == true )
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
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
