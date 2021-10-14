public class Creature {
  public PVector pos, vel;//can turn vel into accelerate later for smoother movement
    public int speed = 1;
    public float hp = 100.0;
  public final int SIZE = 25;
    public final color COLOR = color(200, 0, 30);
    public boolean active = true;
    int rand = random(-2,2);
    
    
  public Creature(int x, int y) {
    pos = new PVector(x,y);
    vel = new PVector(rand, rand);
    if (rand == 0) {
     rand += 1; 
    }
  }
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
    }
    
  public void move() {
   
    pos.add(vel);      
      }
        
  public void collideWorldBounds(World w) {
    if (pos.y + SIZE/2 >= w.size.y) {
      PVector bounce = new PVector(0,-speed);
      vel.add(bounce);
    }
    if (pos.x - SIZE/2 >= w.size.x) {
      PVector bounce = new PVector(-speed, 0);
      vel.add(bounce);
    }
    if (pos.y - SIZE/2 <= w.MARGIN) {
      PVector bounce = new PVector(0,speed);
      vel.add(bounce);
    }
        if (pos.x - SIZE/2 <= w.MARGIN) {
      PVector bounce = new PVector(speed, 0);
      vel.add(bounce);
    }
    }
  public void eat(Food f) {
      double dist = PVector.sub(this.pos,f.pos).mag();
    if (dist <= this.SIZE / 2 + f.SIZE / 2) {
      hp += (int)random(3,9);
      f.active = false;
      }
      if (hp <= 0) {
        active = false;
        if (active ==false) {
        }
      }
  }
   public void eatB(Berry b) {
      double dist = PVector.sub(this.pos,b.pos).mag();
    if (dist <= this.SIZE / 2 + b.SIZE / 2) {
      hp += (int)random(3,9);
      b.active = false;
      }
      if (hp <= 0) {
        active = false;
        if (active ==false) {
        }
      }
  }
   }
