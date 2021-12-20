//Global  Variables  
float ColourX1, ColourY1, ColourdisplayWidth, ColourdisplayHeight;
//
void ColorSelector() {
  rect(ColourX1, ColourY1, ColourdisplayWidth, ColourdisplayHeight);
}

void ColorSelectorsetup() {
  ColourX1 = 3.4/4;
  ColourY1 = 80;
  ColourdisplayWidth = 20;
  ColourdisplayHeight = 20;
  
  int l= 50;
  int w=35;
  int t = 60;
  int h = 35;
  
  for(int i=0; i<3; i++){
    for(int j=0;j<5;j++){
      rect(l,t,w,h);
      l=l+w;
    }
    l=90;
    t=t+h;
  }
  
}
