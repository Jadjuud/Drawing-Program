//Global Variables  //<>// //<>// //<>//
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
float smalleraserX2, smalleraserY2, smalleraserdisplayWidth2, smalleraserdisplayHeight2;
float smalleraserX3, smalleraserY3, smalleraserdisplayWidth3, smalleraserdisplayHeight3;
float smalleraserX4, smalleraserY4, smalleraserdisplayWidth4, smalleraserdisplayHeight4;
float smalleraserX5, smalleraserY5, smalleraserdisplayWidth5, smalleraserdisplayHeight5;
float smalleraserX6, smalleraserY6, smalleraserdisplayWidth6, smalleraserdisplayHeight6;
float smalleraserX7, smalleraserY7, smalleraserdisplayWidth7, smalleraserdisplayHeight7;
float musicPlayerX, musicPlayerY, musicPlayerdisplayWidth, musicPlayerdisplayHeight;
float rectXpic1, rectYpic1, rectdisplayWidthPic1, rectdisplayHeightPic1;
float pic1ImageWidthRatio, pic1displayHeightRatio;
float picX1, picY1, picdisplayWidth1, picdisplayHeight1;
float powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight;
Boolean draw=false;
Boolean brush=false;
float drawingDiameter;
String largeEraser = "Clear All";
String smallEraser = "Eraser/Filler 1";
String brushTool = "Brush 1";
String pencilTool = "Pencil 1";
String circleTool = "Circles 1";
String brushTool2 = "Brush 2";
String brushTool3 = "Brush 3";
String brushTool4 = "Brush 4";
String brushTool5 = "Brush 5";
String pencilTool2 = "Pencil 2";
String pencilTool3 = "Pencil 3";
String pencilTool4 = "Pencil 4";
String pencilTool5 = "Pencil 5";
String circleTool2 = "Circles 2";
String circleTool3 = "Circles 3";
String circleTool4 = "Circles 4";
String circleTool5 = "Circles 5";
String smallEraser2 = "Eraser/Filler 2";
String smallEraser3 = "Eraser/Filler 3";
String smallEraser4 = "Eraser/Filler 4";
String smallEraser5 = "Eraser/Filler 5";
String smallEraser6 = "Eraser/Filler 6";
String smallEraser7 = "Eraser/Filler 7";
String musicProgram = "Music Player";
String powerButton = "Power";
int CirclesOnly = 0;
int PencilOnly = 0;
int BrushOnly = 0;
int EraserOnly = 0;
int Brush2Only = 0;
int Brush3Only = 0;
int Brush4Only = 0;
int Brush5Only = 0;
int Pencil2Only = 0;
int Pencil3Only = 0;
int Pencil4Only = 0;
int Pencil5Only = 0;
int Circles2Only = 0;
int Circles3Only = 0;
int Circles4Only = 0;
int Circles5Only = 0;
int smallEraser2Only = 0;
int smallEraser3Only = 0;
int smallEraser4Only = 0;
int smallEraser5Only = 0;
int smallEraser6Only = 0;
int smallEraser7Only = 0;
final int maxIterations = 600;
int i=0;
PImage pic1;
color buttonColour;
//
void setup() {
  fullScreen();
  population();
  quitButtonsetup();
  textSetup();
  //
  pic1 = loadImage("../DrawingProgramImage.jpg"); // 626 x 390
  rect(rectXpic1, rectYpic1, rectdisplayWidthPic1, rectdisplayHeightPic1);
  image(pic1, rectXpic1, rectYpic1, rectdisplayWidthPic1, rectdisplayHeightPic1);
  //the drawing surface
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfacedisplayWidth, drawingSurfacedisplayHeight);
  //noLoop();
  fill(color(random(0), random(135), random(255)));
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
  smalleraserTextCode(smallEraser, 86, smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight);
  //
  fill(blue);
  rect(brushX2, brushY2, brushdisplayWidth2, brushdisplayHeight2);
  brush2TextCode(brushTool2, 60, brushX2, brushY2, brushdisplayWidth2, brushdisplayHeight2);
  //
  fill(blue);
  rect(brushX3, brushY3, brushdisplayWidth3, brushdisplayHeight3);
  brush3TextCode(brushTool3, 60, brushX3, brushY3, brushdisplayWidth3, brushdisplayHeight3);
  //
  fill(blue);
  rect(brushX4, brushY4, brushdisplayWidth4, brushdisplayHeight4);
  brush4TextCode(brushTool4, 60, brushX4, brushY4, brushdisplayWidth4, brushdisplayHeight4);
  //
  fill(blue);
  rect(brushX5, brushY5, brushdisplayWidth5, brushdisplayHeight5);
  brush5TextCode(brushTool5, 60, brushX5, brushY5, brushdisplayWidth5, brushdisplayHeight5);
  //
  fill(grey);
  rect(pencilX2, pencilY2, pencildisplayWidth2, pencildisplayHeight2);
  pencil2TextCode(pencilTool2, 60, pencilX2, pencilY2, pencildisplayWidth2, pencildisplayHeight2);
  //
  fill(grey);
  rect(pencilX3, pencilY3, pencildisplayWidth3, pencildisplayHeight3);
  pencil3TextCode(pencilTool3, 60, pencilX3, pencilY3, pencildisplayWidth3, pencildisplayHeight3);
  //
  fill(grey);
  rect(pencilX4, pencilY4, pencildisplayWidth4, pencildisplayHeight4);
  pencil4TextCode(pencilTool4, 60, pencilX4, pencilY4, pencildisplayWidth4, pencildisplayHeight4);
  //
  fill(grey);
  rect(pencilX5, pencilY5, pencildisplayWidth5, pencildisplayHeight5);
  pencil5TextCode(pencilTool5, 60, pencilX5, pencilY5, pencildisplayWidth5, pencildisplayHeight5);
  //
  fill(orange);
  rect(circleX2, circleY2, circledisplayWidth2, circledisplayHeight2);
  circle2TextCode(circleTool2, 60, circleX2, circleY2, circledisplayWidth2, circledisplayHeight2);
  //
  fill(orange);
  rect(circleX3, circleY3, circledisplayWidth3, circledisplayHeight3);
  circle3TextCode(circleTool3, 60, circleX3, circleY3, circledisplayWidth3, circledisplayHeight3);
  //
  fill(orange);
  rect(circleX4, circleY4, circledisplayWidth4, circledisplayHeight4);
  circle4TextCode(circleTool4, 60, circleX4, circleY4, circledisplayWidth4, circledisplayHeight4);
  //
  fill(orange);
  rect(circleX5, circleY5, circledisplayWidth5, circledisplayHeight5);
  circle5TextCode(circleTool5, 60, circleX5, circleY5, circledisplayWidth5, circledisplayHeight5);
  //
  rect(smalleraserX2, smalleraserY2, smalleraserdisplayWidth2, smalleraserdisplayHeight2);
  smalleraser2TextCode(smallEraser2, 43, smalleraserX2, smalleraserY2, smalleraserdisplayWidth2, smalleraserdisplayHeight2);
  //
  rect(smalleraserX3, smalleraserY3, smalleraserdisplayWidth3, smalleraserdisplayHeight3);
  smalleraser3TextCode(smallEraser3, 43, smalleraserX3, smalleraserY3, smalleraserdisplayWidth3, smalleraserdisplayHeight3);
  //
  rect(smalleraserX4, smalleraserY4, smalleraserdisplayWidth4, smalleraserdisplayHeight4);
  smalleraser4TextCode(smallEraser4, 43, smalleraserX4, smalleraserY4, smalleraserdisplayWidth4, smalleraserdisplayHeight4);
  //
  rect(smalleraserX5, smalleraserY5, smalleraserdisplayWidth5, smalleraserdisplayHeight5);
  smalleraser5TextCode(smallEraser5, 43, smalleraserX5, smalleraserY5, smalleraserdisplayWidth5, smalleraserdisplayHeight5);
  //
  rect(smalleraserX6, smalleraserY6, smalleraserdisplayWidth6, smalleraserdisplayHeight6);
  smalleraser6TextCode(smallEraser6, 43, smalleraserX6, smalleraserY6, smalleraserdisplayWidth6, smalleraserdisplayHeight6);
  //
  rect(smalleraserX7, smalleraserY7, smalleraserdisplayWidth7, smalleraserdisplayHeight7);
  smalleraser7TextCode(smallEraser7, 43, smalleraserX7, smalleraserY7, smalleraserdisplayWidth7, smalleraserdisplayHeight7);
  //
  rect(musicPlayerX, musicPlayerY, musicPlayerdisplayWidth, musicPlayerdisplayHeight);
  musicProgramTextCode(musicProgram, 35, musicPlayerX, musicPlayerY, musicPlayerdisplayWidth, musicPlayerdisplayHeight);
  //
  rect(powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
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
    if (EraserOnly == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      stroke(reset);
    } else if (PencilOnly == 1) {
      stroke(blue);
      line(mouseX, mouseY, pmouseX, pmouseY);
      stroke(reset);
    } else if (CirclesOnly == 1) {
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    } else if (BrushOnly == 1) {
      brush();
    } else if (Brush2Only == 1) {
      brush2();
    } else if (Brush3Only == 1) {
      brush3();
    } else if (Brush4Only == 1) {
      brush4();
    } else if (Brush5Only == 1) {
      brush5();
    } else if (Pencil2Only == 1) {
      strokeWeight(4);
      line(mouseX, mouseY, pmouseX, pmouseY);
      strokeWeight(reset);
    } else if (Pencil3Only == 1) {
      strokeWeight(8);
      line(mouseX, mouseY, pmouseX, pmouseY);
      strokeWeight(reset);
    } else if (Pencil4Only == 1) {
      strokeWeight(12);
      line(mouseX, mouseY, pmouseX, pmouseY);
      strokeWeight(reset);
    } else if (Pencil5Only == 1) {
      strokeWeight(16);
      line(mouseX, mouseY, pmouseX, pmouseY);
      strokeWeight(reset);
    } else if (Circles2Only == 1) {
      ellipse(mouseX, mouseY, drawingDiameter*2, drawingDiameter*2);
    } else if (Circles3Only == 1) {
      ellipse(mouseX, mouseY, drawingDiameter*2.5, drawingDiameter*2.5);
    } else if (Circles4Only == 1) {
      ellipse(mouseX, mouseY, drawingDiameter*3, drawingDiameter*3 );
    } else if (Circles5Only == 1) {
      ellipse(mouseX, mouseY, drawingDiameter/1.5, drawingDiameter/1.5);
    } else if (smallEraser2Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*2, drawingDiameter*2);
      stroke(reset);
    } else if (smallEraser3Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*3, drawingDiameter*3);
      stroke(reset);
    } else if (smallEraser4Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*4, drawingDiameter*4);
      stroke(reset);
    } else if (smallEraser5Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*5, drawingDiameter*5);
      stroke(reset);
    } else if (smallEraser6Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*6, drawingDiameter*6);
      stroke(reset);
    } else if (smallEraser7Only == 1) {
      noStroke();
      ellipse(mouseX, mouseY, drawingDiameter*8, drawingDiameter*8);
      stroke(reset);
    } else {
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter); 
      line(mouseX, mouseY, pmouseX, pmouseY);
      brush();
      brush2();
      brush3();
      brush4();
      brush5();
    }
  }//End Tools draw
  //
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtondisplayWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtondisplayHeight) {
    buttonColour = green;
    hoverOverButtonFill();
  } else {
    buttonColour = red;
    hoverOverButtonFill();
  } 
  //
  PowerButtonText(powerButton, 30, powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
  //
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
  //
  if (mouseX>brushX2 && mouseX<brushX2+brushdisplayWidth2 && mouseY>brushY2 && mouseY<brushY2+brushdisplayHeight2) {
    Brush2Only = 1;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>brushX3 && mouseX<brushX3+brushdisplayWidth3 && mouseY>brushY3 && mouseY<brushY3+brushdisplayHeight3) {
    Brush3Only = 1;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>brushX4 && mouseX<brushX4+brushdisplayWidth4 && mouseY>brushY4 && mouseY<brushY4+brushdisplayHeight4) {
    Brush4Only = 1;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>brushX5 && mouseX<brushX5+brushdisplayWidth5 && mouseY>brushY5 && mouseY<brushY5+brushdisplayHeight5) {
    Brush5Only = 1;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>pencilX2 && mouseX<pencilX2+pencildisplayWidth2 && mouseY>pencilY2 && mouseY<pencilY2+pencildisplayHeight2) {
    Pencil2Only = 1;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>pencilX3 && mouseX<pencilX3+pencildisplayWidth3 && mouseY>pencilY3 && mouseY<pencilY3+pencildisplayHeight3) {
    Pencil3Only = 1;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>pencilX4 && mouseX<pencilX4+pencildisplayWidth4 && mouseY>pencilY4 && mouseY<pencilY4+pencildisplayHeight4) {
    Pencil4Only = 1;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>pencilX5 && mouseX<pencilX5+pencildisplayWidth5 && mouseY>pencilY5 && mouseY<pencilY5+pencildisplayHeight5) {
    Pencil5Only = 1;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>circleX2 && mouseX<circleX2+circledisplayWidth2 && mouseY>circleY2 && mouseY<circleY2+circledisplayHeight2) {
    Circles2Only = 1;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>circleX3 && mouseX<circleX3+circledisplayWidth3 && mouseY>circleY3 && mouseY<circleY3+circledisplayHeight3) {
    Circles3Only = 1;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>circleX4 && mouseX<circleX4+circledisplayWidth4 && mouseY>circleY4 && mouseY<circleY4+circledisplayHeight4) {
    Circles4Only = 1;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>circleX5 && mouseX<circleX5+circledisplayWidth5 && mouseY>circleY5 && mouseY<circleY5+circledisplayHeight5) {
    Circles5Only = 1;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX2 && mouseX<smalleraserX2+smalleraserdisplayWidth2 && mouseY>smalleraserY2 && mouseY<smalleraserY2+smalleraserdisplayHeight2) {
    smallEraser2Only = 1;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX3 && mouseX<smalleraserX3+smalleraserdisplayWidth3 && mouseY>smalleraserY3 && mouseY<smalleraserY3+smalleraserdisplayHeight3) {
    smallEraser3Only = 1;
    smallEraser2Only = 0;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX4 && mouseX<smalleraserX4+smalleraserdisplayWidth4 && mouseY>smalleraserY4 && mouseY<smalleraserY4+smalleraserdisplayHeight4) {
    smallEraser4Only = 1;
    smallEraser3Only = 0;
    smallEraser2Only = 0;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX5 && mouseX<smalleraserX5+smalleraserdisplayWidth5 && mouseY>smalleraserY5 && mouseY<smalleraserY5+smalleraserdisplayHeight5) {
    smallEraser5Only = 1;
    smallEraser4Only = 0;
    smallEraser3Only = 0;
    smallEraser2Only = 0;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX6 && mouseX<smalleraserX6+smalleraserdisplayWidth6 && mouseY>smalleraserY6 && mouseY<smalleraserY6+smalleraserdisplayHeight6) {
    smallEraser6Only = 1;
    smallEraser5Only = 0;
    smallEraser4Only = 0;
    smallEraser3Only = 0;
    smallEraser2Only = 0;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>smalleraserX7 && mouseX<smalleraserX7+smalleraserdisplayWidth7 && mouseY>smalleraserY7 && mouseY<smalleraserY7+smalleraserdisplayHeight7) {
    smallEraser7Only = 1;
    smallEraser6Only = 0;
    smallEraser5Only = 0;
    smallEraser4Only = 0;
    smallEraser3Only = 0;
    smallEraser2Only = 0;
    Circles5Only = 0;
    Circles4Only = 0;
    Circles3Only = 0;
    Circles2Only = 0;
    Pencil5Only = 0;
    Pencil4Only = 0;
    Pencil3Only = 0;
    Pencil2Only = 0;
    Pencil2Only = 0;
    Brush5Only = 0;
    Brush4Only = 0;
    Brush3Only = 0;
    Brush2Only = 0;
    BrushOnly = 0;
    PencilOnly = 0;
    CirclesOnly = 0;
    EraserOnly = 0;
  }
  //
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtondisplayWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtondisplayHeight) exit();
}//End mousePressed()


void keyPressed() {

  if (keyCode == ESC) //other keycode values under this link: https://processing.org/reference/keyCode.html
  {
    exit();
  }
  //
}//End keyPressed
//
void brush() {
  int width1=60; // that be the width of your brush
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
//
void brush2() {
  int width1=90; 
  //
  float radX2;
  float radY2;
  float angle1;
  float x;
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radX2=random(width1);
    radY2=random(width1);
    angle1= random(360);
    //
    x=(radX2*cos(radians(angle1)))+mouseX;
    y=(radX2*sin(radians(angle1)))+mouseY;
    //
    point(x, y);
  }
}
//
void brush3() {
  int width1=30; 
  //
  float radX3;
  float radY3;
  float angle1;
  float x;
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radX3=random(width1);
    radY3=random(width1);
    angle1= random(360);
    //
    x=(radX3*cos(radians(angle1)))+mouseX;
    y=(radX3*sin(radians(angle1)))+mouseY;
    //
    point(x, y);
  }
}
//
void brush4() {
  int width1=50; 
  //
  float radX4;
  float radY4;
  float angle1;
  float x;
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radX4=random(width1);
    radY4=random(width1);
    angle1= random(-180);
    //
    x=(radX4*cos(radians(angle1)))+mouseX;
    y=(radX4*sin(radians(angle1)))+mouseY;
    //
    point(x, y);
  }
}
//
void brush5() {
  int width1=50; 
  //
  float radX5;
  float radY5;
  float angle1;
  float x;
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radX5=random(width1);
    radY5=random(width1);
    angle1= random(180);
    //
    x=(radX5*cos(radians(angle1)))+mouseX;
    y=(radX5*sin(radians(angle1)))+mouseY;
    //
    point(x, y);
  }
}
//
void hoverOverButtonFill() {
  fill(buttonColour);
  noStroke();
  rect(powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
  stroke(1); //reset stroke to 1 pixel
  fill(reset);
} //End hoverOverButtonFill()
