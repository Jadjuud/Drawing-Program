//Global Variables
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight;

void quitButtonsetup() 
{
  quitButtonX = displayWidth*3/4;
  quitButtonY = displayHeight*0;
  quitButtondisplayWidth = displayWidth*1/4;
  quitButtondisplayHeight = displayHeight*1/16;
  rect(quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
}//End quitButtonsetup()

void quitButtonDraw()
{
}//End quitButtonDraw()

void quitButtonMousePressed() 
{
}//End quitButtonMousePressed()
