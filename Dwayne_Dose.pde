import gohai.simpletweet.*;
SimpleTweet simpletweet;

PImage rockImg[] = new PImage [14];
RockTweet dwayne;
int images; 
PFont f;
int num;


void setup()
{ 
  surface.setResizable(true);
  size(600, 600);
  simpletweet = new SimpleTweet(this);
  background(255);
  f = createFont("Comic Sans MS", 16, true);
    for (int i = 0; i < rockImg.length; i++) 
  {
    rockImg[i] = loadImage("rock"+i+".jpg");
  }
  num = int(random(2, 14));
  dwayne = new RockTweet();
}

void draw()
{ 
  imageMode(CENTER);
  surface.setSize(rockImg[num].height+60, rockImg[num].width);
  image(rockImg[num], rockImg[num].height/2, rockImg[num].width/2);
  dwayne.Draw();
}

void mousePressed()
{
}