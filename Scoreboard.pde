class Scoreboard{ 
  
 int score;
 final color WHITE = color(255);
 final color RED  = color(255, 0, 0);
 final int TEXTSIZE = 30;
  
  
 public Scoreboard(){
   score = 0;    
 } 
 void draw(){
   if (isPositive(this.score)){
     fill(WHITE);
   } else {
     fill(RED);
   }
   textSize(TEXTSIZE);
   text("Score: " + this.score, width*.4, height *.1); 
 } 
 void update(int x){
   this.score += x; 
 }
 boolean isPositive(int x){
   return x >= 0;
 }
} 
