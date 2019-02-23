class World{
  
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
   scoreboard.draw();
   bucket.draw(mouseX);
   foe.draw();
   foe.update();
   friend.draw();
   friend.update();
   for(int i = particleSwarm.size() - 1; i >= 0; --i){
     ParticleSwarm ps = particleSwarm.get(i);
     if (ps.isFinished()){
       particleSwarm.remove(ps);
     }   
     ps.update();
     ps.draw();
   }
   //println("Distance: " + dist(friend.y + friend.FRIENDSIZE/2, 0, bucket.y + bucket.BUCKETSIZE, 0) );
   if (keyPressed){
     scoreboard.update(-1);
     particleSwarm.add(new ParticleSwarm(NUMBER_OF_PARTICLES, friend.x, friend.y));  
   }

 }
}
