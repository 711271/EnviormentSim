Creature[] creatures = new Creature[10];
Food[] food = new Food[100];
World world;
int time;
int wait = 1000;


public void setup() {
  size(800, 800);
  time = millis();
  world = new World();
  spawnFood();
  spawnCreatures();
}

public void draw() {
  background(220);
  world.show();
  for (int j = 0; j < creatures.length; j++) {
    if (creatures[j].Cactive == false)
      continue;
    creatures[j].show();
    creatures[j].move();
    creatures[j].collideWorldBounds(world);
    if (millis() - time >= wait) {
      creatures[j].hp -= 5;
      println(creatures[j].hp);
      time = millis();
    }
  }
  for (int i = 0; i < food.length; i++) {
    if (food[i].active == false)
      continue;    //if food is false skip the food[i].show()
    food[i].show();
    for (int j = 0; j < creatures.length; j++) {
      if (creatures[j].Cactive == false)
        continue;
      creatures[j].eat(food[i]);
    }
  }
}
private void spawnCreatures() {
  for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()*world.size.x + world.MARGIN), (int)(Math.random()*world.size.y + world.MARGIN));
  }
}
private void spawnFood() {
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()*world.size.x + world.MARGIN), (int)(Math.random()*world.size.y + world.MARGIN));
  }
}
