class Bucket{
  final int BUCKETCOLOR = color(150);
  final int BUCKETSIZE = 80;
  float x;
  float y;
  
  
 public Bucket(){
   this.y = WHEIGHT*.9;
 }
  void draw(float x){
    if(atLeftEdge(x)){x = 0;}
    if(atRightEdge(x)){x = WWIDTH-BUCKETSIZE;}
    fill(BUCKETCOLOR);
    rect(x, y, BUCKETSIZE, BUCKETSIZE);
  }
  boolean atLeftEdge (float x){return x <= 0;}
  boolean atRightEdge (float x){return x+BUCKETSIZE >= WWIDTH;}
  
  
}
