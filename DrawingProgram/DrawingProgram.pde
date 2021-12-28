//Global Variables  //<>// //<>// //<>// //<>// //<>// //<>//
float drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight;
float eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight;
float smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight;
float brushX, brushY, brushdisplayWidth, brushdisplayHeight;
float pencilX, pencilY, pencildisplayWidth, pencildisplayHeight;
float circleX, circleY, circledisplayWidth, circledisplayHeight;
float brushX2, brushY2, brushdisplayWidth2, brushdisplayHeight2;
float brushX3, brushY3, brushdisplayWidth3, brushdisplayHeight3;
float brushX4, brushY4, brushdisplayWidth4, brushdisplayHeight4;
float brushX5, brushY5, brushdisplayWidth5, brushdisplayHeight5;
float pencilX2, pencilY2, pencildisplayWidth2, pencildisplayHeight2;
float pencilX3, pencilY3, pencildisplayWidth3, pencildisplayHeight3;
float pencilX4, pencilY4, pencildisplayWidth4, pencildisplayHeight4;
float pencilX5, pencilY5, pencildisplayWidth5, pencildisplayHeight5;
float circleX2, circleY2, circledisplayWidth2, circledisplayHeight2;
float circleX3, circleY3, circledisplayWidth3, circledisplayHeight3;
float circleX4, circleY4, circledisplayWidth4, circledisplayHeight4;
float circleX5, circleY5, circledisplayWidth5, circledisplayHeight5;
Boolean draw=false;
Boolean brush=false;
float drawingDiameter;
String largeEraser = "Clear All";
String smallEraser = "Eraser or Filler 1";
String brushTool = "Brush 1";
String pencilTool = "Pencil 1";
String circleTool = "Circles 1";
int CirclesOnly = 0;
int PencilOnly = 0;
int BrushOnly = 0;
int EraserOnly = 0;
final int maxIterations = 600;
int i=0;
//
void setup() {
  fullScreen();
  population();
  quitButtonsetup();
  textSetup();
  //the drawing surface
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
  //noLoop();
  rect(eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight);
  erasertextcode(largeEraser, 90, eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight);
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
  //
  rect(smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight);
  smalleraserTextCode(smallEraser, 74, smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight);
  //
  rect(brushX2, brushY2, brushdisplayWidth2, brushdisplayHeight2);
  //
  rect(brushX3, brushY3, brushdisplayWidth3, brushdisplayHeight3);
  //
  rect(brushX4, brushY4, brushdisplayWidth4, brushdisplayHeight4);
  //
  rect(brushX5, brushY5, brushdisplayWidth5, brushdisplayHeight5);
  //
  rect(pencilX2, pencilY2, pencildisplayWidth2, pencildisplayHeight2);
  //
  rect(pencilX3, pencilY3, pencildisplayWidth3, pencildisplayHeight3);
  //
  rect(pencilX4, pencilY4, pencildisplayWidth4, pencildisplayHeight4);
  //
  rect(pencilX5, pencilY5, pencildisplayWidth5, pencildisplayHeight5);
  //
  rect(circleX2, circleY2, circledisplayWidth2, circledisplayHeight2);
  //
  rect(circleX3, circleY3, circledisplayWidth3, circledisplayHeight3);
  //
  rect(circleX4, circleY4, circledisplayWidth4, circledisplayHeight4);
  //
  rect(circleX5, circleY5, circledisplayWidth5, circledisplayHeight5);
  //  
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
    if (EraserOnly==1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    } else if (PencilOnly ==1) {
      line(mouseX, mouseY, pmouseX, pmouseY);
    } else if (CirclesOnly == 1) {
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    } else if (BrushOnly ==1) {
      brush();
    } else {
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); //This code-line is for line vs. circle
      line(mouseX, mouseY, pmouseX, pmouseY);
      brush();
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
  //if (mouseX>brushX && mouseX<brushX+brushdisplayWidth && mouseY>brushY && mouseY<brushY+brushdisplayHeight);
  //{
  //  if ( brush == false)
  //  {
  //    brush = true;
  //  } else {
  //    brush = false;
  //  }//End draw boolean
  //}


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
  if (mouseX>smalleraserX && mouseX<smalleraserX+smalleraserdisplayWidth && mouseY>smalleraserY && mouseY<smalleraserY+smalleraserdisplayHeight) {
    //noStroke();
    //fill(white);
    //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    EraserOnly = 1;
  }
  //
  if (mouseX>circleX && mouseX<circleX+circledisplayWidth && mouseY>circleY && mouseY<circleY+circledisplayHeight) {
    //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); 
    CirclesOnly = 1;
    PencilOnly = 0;
    EraserOnly = 0;
    BrushOnly = 0;
  }
  //
  if (mouseX>pencilX && mouseX<pencilX+pencildisplayWidth && mouseY>pencilY && mouseY<pencilY+pencildisplayHeight) {
    PencilOnly = 1;
    CirclesOnly=0;
    BrushOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>brushX && mouseX<brushX+brushdisplayWidth && mouseY>brushY && mouseY<brushY+brushdisplayHeight) {
    BrushOnly = 1;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
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
