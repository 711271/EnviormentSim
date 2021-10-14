public class Food {
  public PVector pos;
  public final int SIZE = 10;
  public final color COLOR = color(0, 78, 133);
  public int health = (int)random(5, 10);
  public boolean active = true;

  public Food(int x, int y) {
    pos = new PVector(x, y);
  }
  public void show() {
    fill(COLOR);
    circle(pos.x, pos.y, SIZE);
  }
}
