/* 
Randall Kincaid-Shatto
160Project
This is my project so far. Pretty sure it's around 95% completed, but there are a few things I want to do before I would call ot complete.

DONE:
Changed colors. Made it prettier.
Increased game length
Cleaned up literals
Condensed number of functions in World()


TO DO: 
Clean up code indentation
Add sound for explosions plus possible BGM
image for BG or elements?
add lives and game over on no lives?
*/

final color BGCOLOR = color(0);
final int NUMBER_OF_PARTICLES = 100;
int gameLength;
World world;

void setup(){
  size(800, 900, P2D);
  frameRate(60);
  gameLength = 60;
  world = new World();
}

void draw(){
  background(BGCOLOR); 
  worldCheck();
}

void worldCheck(){ 
 if (world.dropCounter >= gameLength && world.foeExists == false && world.friendExists == false){
   textSize(28);
   fill(255);
   text("Game Over. Press 'r' to restart.", 0, height/2);
   world.finalScore();
   if (keyPressed){
     if (key == 'r' || key == 'R'){
       world = new World();
     }
   }  
 } else {
     world.draw();
   }
}
