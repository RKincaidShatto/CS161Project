class Bucket{
  final int BUCKETCOLOR = color(150, 50, 50);
  final int BUCKETSIZE = 80;
  float x;
  float y;

 public Bucket(){
   this.x = mouseX;
   this.y = height *.9;
 }
  void draw(float x){
    if(atLeftEdge(x)){x = BUCKETSIZE/2;}
    if(atRightEdge(x)){x = width - BUCKETSIZE/2;}
    fill(BUCKETCOLOR);
    this.x = x;
    stroke(255);
    rectMode(CENTER);
    rect(x, y, BUCKETSIZE, BUCKETSIZE);
  }
  
  boolean atLeftEdge (float x){
    return x <= BUCKETSIZE/2;
  }
  
  boolean atRightEdge (float x){
    return x >= width - BUCKETSIZE/2;
  }  
}
