class Background{
  
 float rotation;
 final int SPHERESIZE = 300;
 final int CUBESIZE = SPHERESIZE/3;
 final int X = height/2;
 final int Y = width/2;
 final int Z = -100;
 final color WHITE = color(255);
 
 public Background(){
   this.rotation = 1;
 }
  
  
 void draw(){ 
   translate(X, Y, Z); 
   drawCube();
   drawSphere();
 }
 void drawSphere(){
   rotateY(1+((rotation/10)));
   rotateX(1+((rotation/10)));
   noFill();
   stroke(WHITE);
   sphere(SPHERESIZE);
 }
 void drawCube(){
   rotateY(1-((rotation/10)));
   rotateX(1-((rotation/10)));
   fill(WHITE);
   pointLight(51, 102, 126, 35, 40, 36);
   box(CUBESIZE);
 }
 void rotate(float x){
   this.rotation += x/10; 
 }
}
