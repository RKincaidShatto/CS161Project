/* 
Randall Kincaid-Shatto
160Project
This is my project so far. Pretty sure it's around 95% completed, but there are a few things I want to do before I would call it complete.

DONE:
Caught a few typos and logic errors
used some booleans to make code read better
Added 3D background

TO DO: 
Clean up code indentation
Condense and stop adding stuff
*/

import ddf.minim.*;

final color BGCOLOR = color(0);
final int NUMBER_OF_PARTICLES = 100;
final color TEXTCOLOR = color(255);
final int GAMELENGTH = 50;
final int TEXTSIZE = 28;

World world;
Minim minim;
AudioPlayer player;

void setup(){
  minim = new Minim(this);
  size(800, 900, P3D);
  frameRate(60);
  world = new World();
  player = minim.loadFile("BGSong.mp3");
  player.play();
}

void draw(){
  background(BGCOLOR); 
  gameCheck();
}

void gameCheck(){ 
 if (gameIsOver()){
   endGame();  
 } else {
     world.draw();
   }
}

boolean gameIsOver(){
  return world.dropCounter >= GAMELENGTH && world.foeExists == false && world.friendExists == false;
}

void endGame(){
  textSize(TEXTSIZE);
  fill(TEXTCOLOR);
  text("Game Over. Press 'r' to restart.", 0, height/2);
  player.mute();
  world.finalScore();
  if (keyPressed){
    if (key == 'r' || key == 'R'){
      world = new World();
      player.unmute();
    }
  }  
}
