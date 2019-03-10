class Scoreboard{ 
  
  int score;
  final color WHITE = color(255);
  final int TEXTSIZE = 30;
  
  
  public Scoreboard(){
    score = 0;    
  } 
  void draw(){
    fill(WHITE);
    textSize(TEXTSIZE);
    text("Score: " + this.score, width *.3, height *.1); 
  } 
  void update(int x){
    this.score += x; 
  }
} 
