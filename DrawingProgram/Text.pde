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
//
void brush2TextCode(String string, int initialSize, float brushX2, float brushY2, float brushdisplayWidth2, float brushdisplayHeight2) {
  fill(lightgreen);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, brushX2, brushY2, brushdisplayWidth2, brushdisplayHeight2);
  fill(white);
}
//
void brush3TextCode(String string, int initialSize, float brushX3, float brushY3, float brushdisplayWidth3, float brushdisplayHeight3) {
  fill(lightgreen);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, brushX3, brushY3, brushdisplayWidth3, brushdisplayHeight3);
  fill(white);
}
//
void brush4TextCode(String string, int initialSize, float brushX4, float brushY4, float brushdisplayWidth4, float brushdisplayHeight4) {
  fill(lightgreen);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, brushX4, brushY4, brushdisplayWidth4, brushdisplayHeight4);
  fill(white);
}
//
void brush5TextCode(String string, int initialSize, float brushX5, float brushY5, float brushdisplayWidth5, float brushdisplayHeight5) {
  fill(lightgreen);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, brushX5, brushY5, brushdisplayWidth5, brushdisplayHeight5);
  fill(white);
}
//
void pencil2TextCode(String string, int initialSize, float pencilX2, float pencilY2, float pencildisplayWidth2, float pencildisplayHeight2) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, pencilX2, pencilY2, pencildisplayWidth2, pencildisplayHeight2);
  fill(white);
}
//
void pencil3TextCode(String string, int initialSize, float pencilX3, float pencilY3, float pencildisplayWidth3, float pencildisplayHeight3) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, pencilX3, pencilY3, pencildisplayWidth3, pencildisplayHeight3);
  fill(white);
}
//
void pencil4TextCode(String string, int initialSize, float pencilX4, float pencilY4, float pencildisplayWidth4, float pencildisplayHeight4) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, pencilX4, pencilY4, pencildisplayWidth4, pencildisplayHeight4);
  fill(white);
}
//
void pencil5TextCode(String string, int initialSize, float pencilX5, float pencilY5, float pencildisplayWidth5, float pencildisplayHeight5) {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, pencilX5, pencilY5, pencildisplayWidth5, pencildisplayHeight5);
  fill(white);
}
//
void circle2TextCode(String string, int initialSize, float circleX2, float circleY2, float circledisplayWidth2, float circledisplayHeight2) {
  fill(lightblue);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, circleX2, circleY2, circledisplayWidth2, circledisplayHeight2);
  fill(white);
}
//
void circle3TextCode(String string, int initialSize, float circleX3, float circleY3, float circledisplayWidth3, float circledisplayHeight3) {
  fill(lightblue);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, circleX3, circleY3, circledisplayWidth3, circledisplayHeight3);
  fill(white);
}
//
void circle4TextCode(String string, int initialSize, float circleX4, float circleY4, float circledisplayWidth4, float circledisplayHeight4) {
  fill(lightblue);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, circleX4, circleY4, circledisplayWidth4, circledisplayHeight4);
  fill(white);
}
//
void circle5TextCode(String string, int initialSize, float circleX5, float circleY5, float circledisplayWidth5, float circledisplayHeight5) {
  fill(lightblue);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, circleX5, circleY5, circledisplayWidth5, circledisplayHeight5);
  fill(white);
}
//
void smalleraser2TextCode(String string, int initialSize, float smalleraserX2, float smalleraserY2, float smalleraserdisplayWidth2, float smalleraserdisplayHeight2) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX2, smalleraserY2, smalleraserdisplayWidth2, smalleraserdisplayHeight2);
  fill(white);
}
//
void smalleraser3TextCode(String string, int initialSize, float smalleraserX3, float smalleraserY3, float smalleraserdisplayWidth3, float smalleraserdisplayHeight3) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX3, smalleraserY3, smalleraserdisplayWidth3, smalleraserdisplayHeight3);
  fill(white);
}
//
void smalleraser4TextCode(String string, int initialSize, float smalleraserX4, float smalleraserY4, float smalleraserdisplayWidth4, float smalleraserdisplayHeight4) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX4, smalleraserY4, smalleraserdisplayWidth4, smalleraserdisplayHeight4);
  fill(white);
}
//
void smalleraser5TextCode(String string, int initialSize, float smalleraserX5, float smalleraserY5, float smalleraserdisplayWidth5, float smalleraserdisplayHeight5) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX5, smalleraserY5, smalleraserdisplayWidth5, smalleraserdisplayHeight5);
  fill(white);
}
//
void smalleraser6TextCode(String string, int initialSize, float smalleraserX6, float smalleraserY6, float smalleraserdisplayWidth6, float smalleraserdisplayHeight6) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX6, smalleraserY6, smalleraserdisplayWidth6, smalleraserdisplayHeight6);
  fill(white);
}
//
void smalleraser7TextCode(String string, int initialSize, float smalleraserX7, float smalleraserY7, float smalleraserdisplayWidth7, float smalleraserdisplayHeight7) {
  fill(grey);
  textAlign (CENTER, CENTER);
  textFont(font, initialSize);
  text(string, smalleraserX7, smalleraserY7, smalleraserdisplayWidth7, smalleraserdisplayHeight7);
  fill(white);
}
//
void musicProgramTextCode(String string, int initialSize, float musicPlayerX, float musicPlayerY, float musicPlayerdisplayWidth, float musicPlayerdisplayHeight) {
  fill(black);
  textAlign (CENTER, TOP);
  textFont(font, initialSize);
  text(string, musicPlayerX, musicPlayerY, musicPlayerdisplayWidth, musicPlayerdisplayHeight);
  fill(white);
}
//
