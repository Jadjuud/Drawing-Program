//Global Variables  //<>// //<>//
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
float eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight;
float brushX, brushY, brushdisplayWidth, brushdisplayHeight;
float pencilX, pencilY, pencildisplayWidth, pencildisplayHeight;
float circleX, circleY, circledisplayWidth, circledisplayHeight;
Boolean draw=false;
Boolean brush=false;
float drawingDiameter;
String eraser = "Clear All";
String brushTool = "Brush";
String pencilTool = "Pencil";
String circleTool = "Circles";
final int maxIterations = 150;
int i=0;

int CirclesOnly = 0;

void setup() {
  fullScreen();
  population();
  quitButtonsetup();
  textSetup();
  //the drawing surface
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
  //noLoop();
  rect(eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight);
  erasertextcode(eraser, 90, eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight);
  //
  fill(blue);
  rect(brushX, brushY, brushdisplayWidth, brushdisplayHeight);
  brushTextCode(brushTool, 90, brushX, brushY, brushdisplayWidth, brushdisplayHeight);
  //
  fill(grey);
  rect(pencilX, pencilY, pencildisplayWidth, pencildisplayHeight);
  pencilTextCode(pencilTool, 90, pencilX, pencilY, pencildisplayWidth, pencildisplayHeight);
  //
  fill(orange);
  rect(circleX, circleY, circledisplayWidth, circledisplayHeight);
  circleTextCode(circleTool, 90, circleX, circleY, circledisplayWidth, circledisplayHeight);
}//End setup()

void draw() {
  //
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
    if (CirclesOnly == 0){
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
      line(mouseX, mouseY, pmouseX, pmouseY);
      brush();
    }
    else{
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
    }
  }//End Tools draw
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
  }
  //
  if (mouseX>brushX && mouseX<brushX+brushdisplayWidth && mouseY>brushY && mouseY<brushY+brushdisplayHeight);
  {
    if ( brush == false)
    {
      brush = true;
    } else {
      brush = false;
    }//End draw boolean
  }


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
  if (mouseX>eraserX && mouseX<eraserX+eraserdisplayWidth && mouseY>eraserY && mouseY<eraserY+eraserdisplayHeight) {
  fill(white);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
  }
  //
    if (mouseX>circleX && mouseX<circleX+circledisplayWidth && mouseY>circleY && mouseY<circleY+circledisplayHeight) {
      //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); 
      CirclesOnly = 1;
      }
}//End mousePressed()


void keyPressed() {

  if (keyCode == ESC) //other keycode values under this link: https://processing.org/reference/keyCode.html
  {
    exit();
  }
}//End keyPressed
//
void brush () {
  int width1=40; // that be the width of your brush
  //
  float radX;   // Radius
  float radY;
  float angle1; // angle
  float x;      // result
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radX=random(width1);
    radY=random(width1);
    angle1= random(360);
    //
    x=(radX*cos(radians(angle1)))+mouseX;
    y=(radX*sin(radians(angle1)))+mouseY;
    //
    point(x, y);
  }
}
