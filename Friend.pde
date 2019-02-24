class Friend{
  float x;
  float y;
  float fallSpeed;
  String[] lines;
  String friendName;
  
  final color FRIENDCOLOR = color(100);
  final float FRIENDSIZE = 80;
  final float FALLVEL = .5;
  
  public Friend(){
    lines = loadStrings("names.txt");   
    this.x = random(FRIENDSIZE*2, WWIDTH);
    this.y = 0;
    this.fallSpeed = random(0.5, 1);
    this.friendName = lines[((int)random(0, lines.length))];
  }
  
  void draw(){
    fill(FRIENDCOLOR);
    ellipse(x, y, FRIENDSIZE, FRIENDSIZE);
    fill(200);
    text(friendName, x - FRIENDSIZE/2, y);
  }
  
  void update(){
    this.y += fallSpeed;
    fallSpeed += FALLVEL;
  }
}
