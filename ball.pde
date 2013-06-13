class Ball {
float xpos;
float ypos;
float w;
 
Ball (float tempXpos, float tempYpos, float tempW) {
xpos = tempXpos;
ypos = tempYpos;
w = tempW;
}
void move() {
ypos = ypos+yspeed;
xpos = xpos+xspeed;
 
if (ypos > height || ypos < 0 ) {
yspeed = yspeed * -1;
}
if (xpos > width || xpos < 0) {
xspeed = xspeed * -1;
}
}
 
 
void display() {
fill(255, random(100, 200));
noStroke();
ellipse(xpos, ypos, w, w);
}
 
void randomSpeed() {
// xspeed = random(-0.3, 0.3 );
// yspeed = random(-0.3, 0.3);
xspeed = random(-3, 3 );
yspeed = random(-3, 3);
}
}

