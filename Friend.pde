class Friend{
  float x;
  float y;
  final color FRIENDCOLOR = color(50);
  final float FRIENDSIZE = 80;
  final String FRIENDSTR = "Placeholder";
  float fallSpeed = 2;
  final float FALLVEL = .5;
  
  String[] lines = loadStrings("names.txt");
  
  public Friend(){
    this.x = random(0, WWIDTH);
    this.y = 0;
    this.fallSpeed = 2;
    for (int i = 0 ; i < lines.length; i++) {
      println(lines[i]);
    }
  }
  
  void draw(){
    fill(FRIENDCOLOR);
    ellipse(x, y, FRIENDSIZE, FRIENDSIZE);
    fill(0);
    text(FRIENDSTR, x - FRIENDSIZE, y);
  }
  
  void update(){
    this.y += fallSpeed;
    fallSpeed += FALLVEL;
  }
}
