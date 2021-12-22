/* Example Subprogram
 Purpose: to code entire object in one place
 Reason: makes code for this object easier to read, reference, and change
 Reminder: each function must be referenced in the main program
 */

//Global Variables
String quitButton = "    X";
float quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight;
color quitButtonColour, red=#FF0303, black=#000000, aqua=#26EA93;
int reset=1;

void quitButtonsetup()
{
  quitButtonX = width*3.7/4;
  quitButtonY = height*0;
  quitButtondisplayWidth = width*2/20;
  quitButtondisplayHeight = height*1/16;
}//End quitButtonSetup()

void quitButtonDraw()
{
  //Quit Button Hover Over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtondisplayWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtondisplayHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = aqua;
  }//End Quit Button Hover Over
  fill(quitButtonColour);
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
  stroke(reset);
  textCode(quitButton, 80, quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
}//End quitButtonDraw()

void quitButtonMousePressed()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtondisplayWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtondisplayHeight) exit();
}//End quitBuittonMousePressed()
