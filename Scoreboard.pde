class Scoreboard{ 
  
  int score;
  
  public Scoreboard(){
    score = 0;    
  } 
  void draw(){
    fill(0);
    textSize(30);
    text("Current Score: " + score, WWIDTH*.3, WHEIGHT*.1);       
  } 
  void update(int x){
    this.score += x; 
  }
}
