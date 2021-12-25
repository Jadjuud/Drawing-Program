/* Example Subprogram
 Purpose: to reuse code by passing parameters to voids (void does not return)
 Reason: simplifies code, no more copying and pasting code to reuse
 Reminder: design of parameters are important, here string and size are passed only
 */

//Global Variables
PFont font; //Font Type
int initialSize=100; //Initial Size
//Black Ink, see QuitButton Global Variables
color white=#FFFFFF; //reset INK

void textSetup() {
  //println("Start of Console");
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  font = createFont ("Dialog.plain", initialSize); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //Layout with a rect(); Variables copied to text();
  rect(quitButtonX, quitButtonY, quitButtondisplayWidth, quitButtondisplayHeight);
  //
  font = createFont ("Dialog.plain", initialSize);
  rect(brushX, brushY, brushdisplayWidth, brushdisplayHeight);
  //
  font = createFont ("Dialog.plain", initialSize);
  rect(brushX, brushY, brushdisplayWidth, brushdisplayHeight);
  //
    font = createFont ("Dialog.plain", initialSize);
    rect(smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight);
}//End textSetup()

//Code to be repeated instead of copied and pasted
void textCode(String string, int initialSize, float rectX, float rectY, float rectdisplayWidth, float rectdisplayHeight) {
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (LEFT, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, initialSize); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(string, rectX, rectY, rectdisplayWidth, rectdisplayHeight);
  fill(white); //reset
  //
}//End textCode()
//
void erasertextcode(String string, int initialSize, float eraserX, float eraserY, float eraserdisplayWidth, float eraserdisplayHeight) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, eraserX, eraserY, eraserdisplayWidth, eraserdisplayHeight);
  fill(white);
}
//
void brushTextCode(String string, int initialSize, float brushX, float brushY, float brushdisplayWidth, float brushdisplayHeight) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, brushX, brushY, brushdisplayWidth, brushdisplayHeight);
  fill(white);
}
//
void pencilTextCode(String string, int initialSize, float pencilX, float pencilY, float pencildisplayWidth, float pencildisplayHeight) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, pencilX, pencilY, pencildisplayWidth, pencildisplayHeight);
  fill(white);
}
//
void circleTextCode(String string, int initialSize, float circleX, float circleY, float circledisplayWidth, float circledisplayHeight) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, circleX, circleY, circledisplayWidth, circledisplayHeight);
  fill(white);
}
//
void smalleraserTextCode(String string, int initialSize, float smalleraserX, float smalleraserY, float smalleraserdisplayWidth, float smalleraserdisplayHeight) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX, smalleraserY, smalleraserdisplayWidth, smalleraserdisplayHeight);
  fill(white);
}
