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
   bucket.draw(mouseX-bucket.BUCKETSIZE/2);
   psCheck();
   friendCollision();
   foeCollision();
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
 void friendCollision(){
  if(dist(friend.x, friend.y, bucket.x+bucket.BUCKETSIZE/2, bucket.y) < friend.FRIENDSIZE/2){
    scoreboard.update(1);
    particleSwarm.add(new ParticleSwarm(NUMBER_OF_PARTICLES, friend.x, friend.y));
    friendExists = false;
    friend = new Friend();
    dropCounter+= 1;
  }
 }
 void foeCollision(){
   if(dist(foe.x, foe.y, bucket.x+bucket.BUCKETSIZE/2, bucket.y) < foe.FOESIZE/2){
     scoreboard.update(-2);
     foeExists = false;
     foe = new Foe();
     dropCounter+= 1;
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
