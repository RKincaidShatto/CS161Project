class World{
  
 int dropCounter;
 boolean foeExists;
 boolean friendExists;
 ArrayList<ParticleSwarm> particleSwarm = new ArrayList <ParticleSwarm>();

 Bucket bucket;
 Foe foe;
 Friend friend;
 Scoreboard scoreboard;
 Background BG;
 
 public World(){
  bucket = new Bucket();
  foe = new Foe();
  friend = new Friend();
  scoreboard = new Scoreboard();
  BG = new Background();
 }
 
 void draw(){
   scoreboard.draw();
   bucket.draw(mouseX);
   stateCheck();
   BG.draw();
   BG.rotate(scoreboard.score);
 }
 
 void finalScore(){
   fill(255);
   text("Final Score: " + scoreboard.score, 0, height/2+28); 
 }
 
 void stateCheck(){
   collision();
   actorCheck();
 }
  
 void collision(){
  if(friendTouching()){
    scoreboard.update(1);
    particleSwarm.add(new ParticleSwarm(NUMBER_OF_PARTICLES, friend.x, friend.y));
    friendExists = false;
    friend = new Friend();
    dropCounter+= 1;
  }
  if(foeTouching()){
     scoreboard.update(-2);
     foeExists = false;
     foe = new Foe();
     dropCounter+= 1;
   } 
 }
  
 boolean friendTouching(){
   return dist(friend.x, friend.y, bucket.x, bucket.y) < friend.FRIENDSIZE;
 }
 
 boolean foeTouching(){
   return dist(foe.x, foe.y, bucket.x, bucket.y) < foe.FOESIZE;
 }
 
 void actorCheck(){
    if (random(200) < 1){
      foeExists = true;
      dropCounter += 1;
   }    
     if (foeExists){
       foe.draw();
       foe.update();
       if (foe.y > height + foe.FOESIZE){
         foeExists = false;
         foe = new Foe();
       }      
     }
   if (random(150) < 1){
     friendExists = true;
     dropCounter += 1;
   }      
   if (friendExists){
     friend.draw();
     friend.update();
       if (friend.y > height + friend.FRIENDSIZE){
         friendExists = false;
         friend = new Friend();
         scoreboard.update(-1);
       }      
   }
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
