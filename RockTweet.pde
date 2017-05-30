class RockTweet
{
  PFont _f;
  int _num;
  PImage _rock;
  String _text;
  int _fSize;
  int _fColour;
 


  String tweets[] =
    {
    "rock rock rock", 
    "I rock", 
    "Success isn’t always about greatness, it’s about consistency. ", 
    "All successes begin with Self-Discipline. It starts with you.", 
    "You sing, you dance, you play ukulele and you drink. ", 
    "With drive and a bit of talent, you can move mountains.", 
    "You either play the game or let the game play you.", 
    "Keep calm and shut your mouth.", 
    "Wrestling was like stand-up comedy for me.", 
    "Grind Hard, Shine Hard.", 
    "You don’t need directions, just point yourself to the top and go!", 
    "Consistent, hard work gains success. Greatness will come.", 
    "Always be humble and hungry", 
  };

  RockTweet()
  {
    _rock = rockImg[(int)random(16)];
    _text = tweets[(int)random(13)];
    _fSize = 30;
    _fColour = int(random(200, 255));
    _rock.resize(0, 600);
    println("Height: " + _rock.height);
    println("Width: " + _rock.width);
  }

  void Draw()
  {
    rectMode(CORNER);
    imageMode(CENTER);
    textFont(f, _fSize);
    fill(_fColour);
    textAlign(CENTER, CENTER);
    float topTextSize = _rock.height * .4;
    surface.setSize(_rock.width, _rock.height + (int)topTextSize);
    image(_rock, width/2, (height/2) );//- (int)topTextSize);
    text(_text, 0, 0, width, _rock.height * 0.2);
  }
}