Ball[] balls = new Ball[1];
Line[] myLine = new Line[1];
int[] lineXpos = new int[1];
int[] lineYpos = new int[1];

float xspeed;
float yspeed;

void setup () {
  size(400, 400);
  frameRate(40);
  myLine[0] = new Line(width/2, height/2, width/2, height/2);
  balls[0] = new Ball(width/2, height/2, random(5, 20));

  lineXpos[0] = width/2;
  lineYpos[0] = height/2;
}

void draw () {
  background(0);
  for ( int i = 0; i < balls.length; i++ ) {
    balls[i].randomSpeed();
    balls[i].move();
    balls[i].display();
  }

  for (int i=0;i<myLine.length;i++) {
    strokeWeight(0.5);
    stroke(255, 150);
    myLine[i].display();
    // myLine[i].jiggle();

    // update myLine[] so x and y equal to balls[] x and y
    if (i>0) {
      myLine[i].xpos1 = balls[i-1].xpos;
      myLine[i].ypos1 = balls[i-1].ypos;
      myLine[i].xpos2 = balls[i].xpos;
      myLine[i].ypos2 = balls[i].ypos;
    }
  }
}





void mouseClicked() {
  Ball newball = new Ball (mouseX, mouseY, random(5, 20));
  balls = (Ball[]) append(balls, newball);
  lineXpos = append(lineXpos, mouseX);
  // println(lineXpos.length-1);
  // println(lineXpos[lineXpos.length-1]);
  lineYpos = append(lineYpos, mouseY);
  //println(lineYpos.length-1);
  //println(lineYpos[lineYpos.length-1]);
  int m = balls.length-1;
  Line newLine = new Line (lineXpos[m-1], lineYpos[m-1], lineXpos[m], 
  lineYpos[m]);
  myLine = (Line[]) append(myLine, newLine);
}

