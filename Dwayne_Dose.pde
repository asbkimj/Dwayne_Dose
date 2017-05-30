import gohai.simpletweet.*;
SimpleTweet simpletweet;

PImage rockImg[] = new PImage [16];
RockTweet dwayne;
int images; 
PFont f;
int num;


String Auth_key = "xj6uTGNIzEIcVd0lEU9xTqbaU";
String secret = "4QiX0b9O5q8GtjRuXLKV3tCklGNz64WqRHcSETgNEqga6NvEYI";
String access_token = "864705258735378432-TTVwgHDWJ5fPFRa3XSsIhysf7DgPTdP";
String access_secret = "Qdh0lxGVVB8dadkuiMfZtXYPqRV9oYLB0fvGQohe47cxx";

void setup()
{ 
  simpletweet = new SimpleTweet(this);
  twitterSetup();

  surface.setResizable(true);
  background(255);
  f = createFont("Comic Sans MS", 180, true);
  textSize(100);
  for (int i = 0; i < rockImg.length; i++) 
  {
    rockImg[i] = loadImage("rock"+i+".jpg");
  }
  num = int(random(0, rockImg.length+1));
  dwayne = new RockTweet();
}

void twitterSetup()
{
  simpletweet.setOAuthConsumerKey(Auth_key);
  simpletweet.setOAuthConsumerSecret(secret);
  simpletweet.setOAuthAccessToken(access_token);
  simpletweet.setOAuthAccessTokenSecret(access_secret);
}

void draw()
{ 
  background(0);
  dwayne.Draw();
}

void keyPressed()
{
  imagePost();
  dwayne = new RockTweet();
}

void imagePost()
{
  PImage tweetImage = copy();
  tweetImage.save("tweetimage.png");
  //simpletweet.tweetImage(tweetImage, "@JohnKilbane");
}