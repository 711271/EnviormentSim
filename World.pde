public class World {
  private PVector pos, size;
  private final int MARGIN = 30;

  public World() {
    size = new PVector(width-MARGIN, height-MARGIN);
    pos = new PVector(MARGIN, MARGIN);
  }

  public void show() {
  }
}
