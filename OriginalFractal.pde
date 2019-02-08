public void setup()
{
  //background(#A6CDEA);
  size(1000, 900);
}

public void draw()
{
  //mouse();
  dogRe(200, 700, 800);
  //textBubbles();
}
/*
public void mouse()//optional
{
  if (mousePressed == true && mouseY > 500)
    y = y - 2;
  else if (mousePressed == true && mouseY < 500)
    y = y + 2;
  else
    y = 500;
}
*/
public void dogRe(int x, int y, int l) {
  if (l <= 200) {
    dog(x, y, l);
  } else {
    dogRe(x, y, l/2);
    dogRe(x+(l/2), y, l/2);
    dogRe(x+(l/4), y-(l/2), l/2);
  }
}
//makes full dog
void dog(int x, int y, int l)
{
  torso(x, y, l);
  earLeft(x, y);
  head(x, y);
  tounge(x, y);
  nose(x, y);
  earRight(x, y);
  leg(x, y);
  //tail(x, y);
  eyes(x, y);
}
//makes body shape and fills color
void torso(int x, int y, int l)
{
  fill(#711313);
  ellipse(x, 100+y, l, l-100);
}

//makes head shape and rids of stroke
void head(int x, int y)
{
  fill(#711313);
  noStroke();
  //circular haed
  ellipse(x-100, 50+y, 100, 100);
}

//makes the dogs snout and button nose
void nose(int x, int y)
{
  //color nose browon
  fill(#711313);
  //nose shape (snout)
  ellipse(x-125, 80+y, 100, 50);
  //button nose
  fill(#000000);
  ellipse(x-175, 80+y, 10, 10);
}

//makes ear on left of the screen
void earLeft(int x, int y)
{
  fill(#000000);
  ellipse(x-130, 55+y, 50, 99);
}

//makes ear on right of the screen
void earRight(int x, int y)
{
  fill(#000000);
  ellipse(x-75, 55+y, 50, 100);
}

//makes a single leg
void leg(int x, int y)
{
  int y1 = 110;
  int x1 = x-90;
  for (int i = 0; i < 4; i++) {
    fill(#711313);
    rect(x1, y1+y, 30, 50);
    ellipse(x1+5, y1+50+y, 10, 10);
    ellipse(x1+15, y1+50+y, 10, 10);
    ellipse(x1+25, y1+50+y, 10, 10);
    x1 = x1 + 50;
  }
}
//make tail
void tail(int x, int y)
{
  fill(#711313);
  bezier(x+100, 100+y, 350, 100+y, 390, 100+y, 450, 50+y);
}

void eyes(int x, int y)
{
  fill(#000000);
  ellipse(x-110, 50+y, 10, 10);
  ellipse(x-145, 50+y, 10, 10);
}

void tounge(int x, int y)
{
  fill(#F57E7E);
  ellipse(x-125, y+100, 20, 40);
}

void textBubbles()
{
  fill(#A6EABD);
  ellipse(200, 250, 250, 250);
  fill(#000000);
  textSize(24);
  textAlign(CENTER);
  text("THICC!!", 200, 250);
  fill(#E3A2E8);
  ellipse(200, 750, 250, 250);
  fill(#000000);
  textSize(24);
  textAlign(CENTER);
  text("Lil Boy!!(and Fractal)", 200, 750);
}

void textBubble(int y)
{
  fill(#FFFFFF);
  ellipse(150, -50+y, 200, 100);
  bezier(100, -50+y, 80, y, 100, y, 125, 20+y);
  fill(#000000);
  textSize(24);
  textAlign(CENTER);
  text("What's Up Dog?", 150, -40+y);
}
