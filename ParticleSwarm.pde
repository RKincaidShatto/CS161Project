class ParticleSwarm{
  
ArrayList<Particle> particles = new ArrayList<Particle>(); 
 
ParticleSwarm(int numberOfParticles ){
  for(int i = 0 ; i < numberOfParticles ; i++){
    particles.add( new Particle()); 
     
   }
 }
 
ParticleSwarm(int numberOfParticles, float x, float y ){
  for(int i = 0 ; i < numberOfParticles ; i++){
    particles.add( new Particle(x, y)); 
     
  }
}
  
void draw(){
  for(Particle p : particles){
    p.draw(); 
  }   
}
 
void update(){
  for(Particle p : particles){
     p.move();
  } 
}
  
boolean isFinished(){
  boolean allParticlesOffScreen = true;
    for (Particle p : particles){
      if (p.onScreen()){
        allParticlesOffScreen = false;
        break;
      }
    }
    return allParticlesOffScreen;
}
}
