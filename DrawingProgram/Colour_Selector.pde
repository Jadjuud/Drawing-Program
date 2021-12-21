//Global  Variables  
float ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1;
color pink=#F737EE, purple=#BC26EA, blue=#3226EA, lightblue=#26DCEA, green=#29D63E, lightgreen=#21E86E, yellow=#EEFC29, orange=#FAB214;
color ColorSelector1, ColorSelector2, ColorSelector3, ColorSelector4, ColorSelector5, ColorSelector6, ColorSelector7, ColorSelector8, ColorSelector9, ColorSelector10;
//
void SmallBoxColorSelector() {
  rect(ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);
  ColourX1 = displayWidth*3/4;
  ColourY1 = displayHeight*2/30;
  ColourdisplayWidth1 = displayWidth*2/24;
  ColourdisplayHeight1 = displayHeight*1/16;

  fill(black);

}

void ColorSelectorsetup() {

  
  //int l[]= {90,130,170,210,250}; 
  int l[]= {90,190,290,390,490};
  int w=100;
  int t[]= {90,190,290,390,490};
  int h = 100;
  
  
  for(int i=0; i<3; i++){
    for(int j=0;j<5;j++){
      rect(l[j],t[i],w,h);
    }
  }
  
}

void ChangeColorDraw(){
  
  
  if (mouseX >= 90 && mouseX <= 590 & mouseY >=90 && mouseY <= 390){
      ColorSelector1 = blue;
      fill(ColorSelector1);
  }
  else{
     ColorSelector1 = red;
      fill(ColorSelector1);
  }
  
}

//
void ColorSelectordraw() {
  if (mouseX>ColourX1 && mouseX<ColourX1+ColourdisplayWidth1 && mouseY>ColourY1 && mouseY<ColourY1+ColourdisplayHeight1) {
    ColorSelector1 = black;
  } else {
    ColorSelector1 = red;
  }//End Quit Button Hover Over
  fill(ColorSelector1);
  noStroke(); //removes rect() outline
  rect(ColourX1, ColourY1, ColourdisplayWidth1, ColourdisplayHeight1);
  //ColorSelector1 = red;
  //fill(ColorSelector1);
  
}
