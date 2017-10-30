int circleX = 1016, circleY = 334;  // Position of circle button
int circleSize = 60;   // Diameter of circle Button
boolean circleOver = false;

void setup () {
  background(181,255,231);
  size(1366, 768); // Largest canvas size without fullScreen()
  fill(181,255,231); //Color for object below
  noStroke();
  rect(250,80,866,540); // Eraser Rectangle
  print("Screen Dimensions" + "\n My width is " + displayWidth + "\n My Height is " + displayHeight);
  fill(0);
  textSize(40); //Text Below TextSize
  text("Rate Images", 566,50); // Text/Position (Width = 234 Pixel)
  textSize(28); //Text Below TextSize
  text("20/20", 642, 128); // Picture Number Text (Width = 84 Pixel)
  fill(255); //Color of Objects Below
  rect(410,134,546,400); //Picture Frame
  fill(180); //Object Below color
  ellipse(1016,334,60,60); // Next Button
  ellipse(350,334,60,60); // Previous Button
  rect(20,20,80,80); // User Profile Button
  fill(0); //Color for object below
  textSize(20); //Text Below TextSize
  text("Profile",30,70); // User Profile Text
}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
  } else {
    circleOver = false;
  }
}

void draw () {
  update(mouseX, mouseY);
  if (circleOver) {
    fill(120);
    ellipse(1016,334,60,60); // Next Button
  } else {
    fill(180);
    ellipse(1016,334,60,60); // Next Button
  }
}


void mousePressed() {
  if (circleOver) {
    print("Screen Dimensions" + "\n My width is " + displayWidth + "\n My Height is " + displayHeight);
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}