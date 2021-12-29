//Global  Variables  
float ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1;
color pink=#F737EE, purple=#BC26EA, blue=#3226EA, lightblue=#26DCEA, green=#29D63E, lightgreen=#40FF03, yellow=#EEFC29, orange=#FFB003, black=#000000, grey=#676C66;
color ColorSelector1; 
//
void SmallBoxColorSelector() {

  fill(black);
  rect(ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}


void SmallBoxColorSelector2() {

  fill(pink);
  rect(ColourX1, ColourY1+ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector3() {

  fill(blue);
  rect(ColourX1, ColourY1*3, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector4() {

  fill(green);
  rect(ColourX1, ColourY1*4, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector5() {

  fill(yellow);
  rect(ColourX1, ColourY1*5, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector6() {

  fill(red);
  rect(ColourX1*1.12, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector7() {

  fill(purple);
  rect(ColourX1*1.12, ColourY1*2, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector8() {

  fill(lightblue);
  rect(ColourX1*1.12, ColourY1*3, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector9() {

  fill(lightgreen);
  rect(ColourX1*1.12, ColourY1*4, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector10() {

  fill(orange);
  rect(ColourX1*1.12, ColourY1*5, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector11() {

  fill(white);
  rect(ColourX1*1.12, ColourY1*0, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void SmallBoxColorSelector12() {

  fill(grey);
  rect(ColourX1, ColourY1*0, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;
}
//
void DrawGrid() {

  if (ColorSelector1 != black && ColorSelector1 != pink && ColorSelector1 != blue && ColorSelector1 != green && ColorSelector1 != yellow && ColorSelector1 != red && ColorSelector1 != purple && ColorSelector1 != lightblue && ColorSelector1 != lightgreen && ColorSelector1 != orange && ColorSelector1 != white && ColorSelector1 != grey)
    ColorSelector1=red;

  int l[]= {20, 120, 220, 320, 420};
  int w=100;
  int t[]= {1150, 1250, 1350, 1450, 1550};
  int h = 100;


  for (int i=0; i<3; i++) {
    for (int j=0; j<5; j++) {
      fill(ColorSelector1);
      rect(l[j], t[i], w, h);
    }
  }
}
//
void ChangeColorDraw() {


  //if (mouseX >= 90 && mouseX <= 590 & mouseY >=90 && mouseY <= 390){
  //    ColorSelector2 = blue;
  //    fill(ColorSelector2);
  //}
  //else{
  //  ColorSelector2 = red;
  //    fill(ColorSelector2);
  //}
}

//
void ColorSelectordraw() {
  //if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1 && mouseY<ColourY1+ColourdisplayHeight1) {
  //  ColorSelector1 = black;
  //} 
  //else {
  //  ColorSelector1 = black;
  //}//End Quit Button Hover Over
  //fill(ColorSelector1);

  //noStroke(); //removes rect() outline
  //rect(ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);

  //ColorSelector1 = red;
  //fill(ColorSelector1);
}
