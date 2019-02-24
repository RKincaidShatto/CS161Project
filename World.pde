class World{
  
 int dropCounter;
 boolean foeExists;
 boolean friendExists;
 ArrayList<ParticleSwarm> particleSwarm = new ArrayList <ParticleSwarm>();

 Bucket bucket;
 Foe foe;
 Friend friend;
 Scoreboard scoreboard;
 
 public World(){
  bucket = new Bucket();
  foe = new Foe();
  friend = new Friend();
  scoreboard = new Scoreboard();
 }
 
 void draw(){
   foeCheck();
   friendCheck();
   scoreboard.draw();
   bucket.draw(mouseX);
   psCheck();

   //println("Distance: " + dist(friend.y + friend.FRIENDSIZE/2, 0, bucket.y + bucket.BUCKETSIZE, 0) );
   if (keyPressed){
     scoreboard.update(-1);
     particleSwarm.add(new ParticleSwarm(NUMBER_OF_PARTICLES, friend.x, friend.y));  
   }
 }
 
 void foeCheck(){
      if (random(1, 200) < 2){
        foeExists = true;
        dropCounter += 1;
   }    
   if (foeExists){
     foe.draw();
     foe.update();
     if (foe.y > width + foe.FOESIZE){
       foeExists = false;
       foe = new Foe();
     }      
   }
 }
 void friendCheck(){
      if (random(1, 150) < 2){
        friendExists = true;
        dropCounter += 1;
   }    
   if (friendExists){
     friend.draw();
     friend.update();
     if (friend.y > width + friend.FRIENDSIZE){
       friendExists = false;
       friend = new Friend();
     }      
   }
 }
 void psCheck(){
      for(int i = particleSwarm.size() - 1; i >= 0; --i){
     ParticleSwarm ps = particleSwarm.get(i);
     if (ps.isFinished()){
       particleSwarm.remove(ps);
     }   
     ps.update();
     ps.draw();
   }
 }
}
