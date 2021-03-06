class Particle {
  
  final float PSIZE = 30;
  final float MINIMUM_INITIAL_X_VELOCITY = -20;
  final float MAXIMUM_INITIAL_X_VELOCITY = 20;
  final float MINIMUM_INITIAL_Y_VELOCITY = -20;
  final float MAXIMUM_INITIAL_Y_VELOCITY = -10;
  final float ACCELERATION = 0.4;
  
  float x;
  float y;
  float size;
  color pColor;
  float xVelocity;
  float yVelocity;
    
  public Particle() {
    this.x = width / 2;
    this.y = height / 2;
    this.size = random(PSIZE - 20, PSIZE);
    this.pColor = color(random(20, 255), random(20, 255), random(20, 255), 175);
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY);
  } 
  
  public Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.size = random(PSIZE - 20, PSIZE + 20);
    this.pColor = color(random(50, 255), random(50, 255), random(50, 255), 150);
    this.xVelocity = random(MINIMUM_INITIAL_X_VELOCITY, MAXIMUM_INITIAL_X_VELOCITY);
    this.yVelocity = random(MINIMUM_INITIAL_Y_VELOCITY, MAXIMUM_INITIAL_Y_VELOCITY);
  } 
  
  public void draw() {
    fill(this.pColor);
    ellipse(this.x, this.y, this.size, this.size);
  }

  public void move() {
    this.x += this.xVelocity;
    this.y += this.yVelocity;
    this.yVelocity += ACCELERATION;
  }
      
  boolean onScreen(){
   return y > 0 && y < height; 
  }
}
