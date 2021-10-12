public class Bush {
Berry[] berries = new Berry[50];
 public PVector pos; 
 public final int SIZE = 40;
 public final color COLOR = color(34, 139, 34);
 public boolean spawn = false;
   public int amount = 0;
 
public Bush(int x, int y) {
  pos = new PVector(x,y);
  }
      public void show() {
     fill(COLOR);
     circle(pos.x,pos.y,SIZE);
     for (int m = 0; m < berries.length; m++);
    }
    public void growBerry() {
  if (spawn == true){
    berries[amount] = new Berry((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
    }
}
