public class Mover {
  PVector pos;
  PVector vel;
  PVector acc;
  float maxSpeed;
  
  Mover() {
   pos = new PVector();
   vel = new PVector();
   maxSpeed = 3;
  }
  void update(Food f)  {
   PVector food = new PVector(f.pos.x,f.pos.y); //Vector that points to Food 
   PVector acc = PVector.sub(f.pos, this.pos);
   acc.setMag(0.2); //sets magnitude of acc
   
   vel.add (acc);
   vel.limit(maxSpeed);
   pos.add(vel);
  } 
  void show() {
    stroke(255);
    strokeWeight(2);
    fill(127);
    ellipse(pos.x,pos.y,48,48);
  }
}
