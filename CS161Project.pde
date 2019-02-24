/* TO DO: 
Create collision that results in a swarm E: Collision sucks.
Clean up code and put update and draws in a world object.
Add sound for explosions plus possible BGM
*/

final int WWIDTH = 800;
final int WHEIGHT =900;
final color BGCOLOR = color(255);
final int NUMBER_OF_PARTICLES = 100;

World world = new World();

void settings(){
  size(WWIDTH, WHEIGHT, P2D);
}

void setup(){
  frameRate(60);
}

void draw(){
  background(BGCOLOR); 
  worldCheck();
}

void worldCheck(){
 if (world.dropCounter >= 30){
   textSize(50);
   fill(0);
   text("Game Over! Press 'r' to restart!", 0, WHEIGHT/2);
   if (keyPressed){
     if (key == 'r' || key == 'R'){
       world = new World();
     }
   }  
 } else {
     world.draw();
 }
}
