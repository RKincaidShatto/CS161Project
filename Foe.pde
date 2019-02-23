class Foe{
  float x;
  float y;
  final color FOECOLOR = color(100);
  final float FOESIZE = 40;
  final String FOESTR = "Anonymous Foe";
  float fallSpeed = 2;
  final float FALLVEL = .5;
  
  public Foe(){
    this.x = random(0, WWIDTH);
    this.y = 0;
    this.fallSpeed = 2;
  }
  
  void draw(){
    fill(FOECOLOR);
    ellipse(x, y, FOESIZE, FOESIZE);
    fill(0);
    text(FOESTR, x - FOESIZE, y);
  }
  
  void update(){
    this.y += fallSpeed;
    fallSpeed += FALLVEL;
  }
}
