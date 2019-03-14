class Foe{
  
  float x;
  float y;
  float fallSpeed;
  final float MINFALLSPEED = .5;
  final float MAXFALLSPEED = 2;
  final color FOECOLOR = color(255, 0, 0);
  final float FOESIZE = 40;
  final String FOESTR = "Foe";
  final float FALLVEL = .5;
  
  public Foe(){
    this.x = random(FOESIZE*2, width-FOESIZE);
    this.y = 0;
    this.fallSpeed = random (MINFALLSPEED, MAXFALLSPEED);
  }
  
  void draw(){
    fill(FOECOLOR);
    ellipse(x, y, FOESIZE, FOESIZE);
    drawText();
  }
  
  void drawText(){
    fill(255);
    text(FOESTR, x - FOESIZE, y);
  }
  
  void update(){
    this.y += fallSpeed;
    fallSpeed += FALLVEL;
  }
}
