class Line {
float xpos1;
float ypos1;
float xpos2;
float ypos2;
 
Line (float tempXpos1, float tempYpos1, float tempXpos2, float tempYpos2)
{
xpos1 = tempXpos1;
ypos1 = tempYpos1;
xpos2 = tempXpos2;
ypos2 = tempYpos2;
}
 
void display () {
strokeWeight(0.5);
stroke(140);
line (xpos1, ypos1, xpos2, ypos2);
}
 
void jiggle() {
 
ypos1 = ypos1+yspeed;
xpos1 = xpos1+xspeed;
ypos2 = ypos2+yspeed;
xpos2 = xpos2+xspeed;
}
}
