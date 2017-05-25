class RockTweet
{
  PFont _f;
  int _num;
  PImage _rock;
  String _text;
  
String tweets[] =
  {
  "rock rock rock", 
  "Something", 
  "lemons", 
  "pomplemouse", 
  "CSR meeting", 
  "Things", 
  "Water", 
  "Pizza", 
  "Rye", 
  "Rye Pizza", 
  "pASTA"
};

  RockTweet()
  {
    _rock = rockImg[(int)random(14)];
    _text = tweets[(int)random(12)];
  }

  void Draw()
  {
    textFont(f, 20);
    fill(0);
    textAlign(CENTER);
    text(_text, width/2, height/2);
  }
}