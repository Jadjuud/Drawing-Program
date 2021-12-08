//Global Variables
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight;
color quitButtonColour, red=#F50707, black=#000000;
int reset=1;

void quitButtonsetup() 
{
  quitButtonX = displayWidth*3.7/4;
  quitButtonY = displayHeight*0;
  quitButtondisplayWidth = displayWidth*1/4;
  quitButtondisplayHeight = displayHeight*1/16;
  rect(quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
}//End quitButtonsetup()

void quitButtonDraw()
{
  //Quit Button Hover Over
   if () {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hover Over
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
  stroke(reset);
}//End quitButtonDraw()

void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtondisplayWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtondisplayHeight) exit();
}//End quitButtonMousePressed()
