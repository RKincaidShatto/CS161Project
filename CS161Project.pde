/* TO DO: 
Create collision that results in a swarm E: Collision sucks.
Create Scoreboard
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
  world.draw();
}
