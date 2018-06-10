class Fruit {
  // Declaring variables
  int fruitx = (int(random(1, 30)))*20;
  int fruity = (int(random(1, 30)))*20;

  // Displays fruit on screen
  void display() {
    fill(0);
    rect(fruitx, fruity, 20, 20);
  }

  // Resets fruit coordinates
  void reset() {
    fruitx = (int(random(1, 30)))*20;
    fruity = (int(random(1, 30)))*20;
  }
}