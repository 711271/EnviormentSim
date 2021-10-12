public class Berry {
  public PVector pos;
  public final int SIZE = 10;
  public final color COLOR = color(141, 78, 133);
  public int health = (int)random(1,5);
  public boolean active = true;
    
public Berry(int x, int y) {
  pos = new PVector(x,y);
  }
      public void show() {
     fill(COLOR);
     circle(pos.x,pos.y,SIZE);
    }
}
