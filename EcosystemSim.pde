Creature[] creatures = new Creature[10];
//Mover mover;
Food[] food = new Food[50];
World world;
int time;
int wait = 1000;
Bush[] bushes = new Bush[4];


public void setup() {
  size(800,800);
//  mover = new Mover();
  time = millis();
  world = new World();
  spawnBushes();
  spawnFood();
  spawnCreatures();
}

public void draw() {
  background(220);
 // mover.show();
  world.show();
  for(int j = 0; j < creatures.length; j++) {
     if (creatures[j].active == false)
       continue;
     creatures[j].show();
     creatures[j].move();
     creatures[j].collideWorldBounds(world);
    if(millis() - time >= wait){
    creatures[j].hp -= 5;
    println(creatures[j].hp);
    time = millis();
  }
for(int b = 0; b < bushes[0].amount; b++) {
  b = bushes[b].amount;
   if(millis() - time >= wait){
      bushes[0].growBerry();
      time = millis();
}
  }
  for(int i = 0; i<food.length; i++) {
    if(food[i].active == false)
    continue;    //if food is false skip the food[i].show()
   food[i].show(); 
  // mover.update(food[i]);
  }
   for (int l = 0; l < creatures.length; l++) {
     if (creatures[j].Cactive == false)
       continue;
   creatures[j].eat(food[j]);
   }
   for (int k = 0; k < bushes.length; k++) {
      bushes[k].show();
  }
}
  }
private void spawnCreatures() {
  for (int i = 0; i < creatures.length; i++) {
    creatures[i] = new Creature((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
}
private void spawnFood() {
  for (int i = 0; i < food.length; i++) {
    food[i] = new Food((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
  }
   private void spawnBushes() {
  for (int i = 0; i < bushes.length; i++) {
    bushes[i] = new Bush((int)(Math.random()*world.size.x + world.MARGIN),(int)(Math.random()*world.size.y + world.MARGIN));
  }
  }
