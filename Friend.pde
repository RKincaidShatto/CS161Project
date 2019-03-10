class Friend{
  float x;
  float y;
  float fallSpeed;
  String[] lines;
  String friendName;
  
  
  final color FRIENDCOLOR = color(0, 0, 255);
  final float FRIENDSIZE = 80;
  final float MINFALLSPEED = .5;
  final float MAXFALLSPEED = 2;
  final float FALLVEL = .5;
  
  
  public Friend(){
    lines = loadStrings("names.txt");   
    this.x = random(FRIENDSIZE*2, width-FRIENDSIZE);
    this.y = 0;
    this.fallSpeed = random(MINFALLSPEED, MAXFALLSPEED);
    this.friendName = lines[((int)random(lines.length))];
  }
  
  void draw(){
    fill(FRIENDCOLOR);
    ellipse(x, y, FRIENDSIZE, FRIENDSIZE);
    drawText();
  }
  
  void drawText(){
    fill(255);
    text(friendName, x - FRIENDSIZE/2, y);   
  }
  
  void update(){
    this.y += fallSpeed;
    fallSpeed += FALLVEL;
  }
}
