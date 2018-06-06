class SnakeCharacter {
  float x = realGrid(15);
  float y = realGrid(15);
  float xSpeed = 1;
  float ySpeed = 0;

  ArrayList<SnakeCharacter> snakeLength = new ArrayList<SnakeCharacter>();

  void create() {
    fill(199, 234, 70);
    rect(x, y, 20, 20);
  }

  void addToSnake() {
  }

  float realGrid(float x) {
    return x *= 20;
  }

  void direction(float x, float y) {
    xSpeed = x;
    ySpeed = y;
  }

  void move() {
    x = x + realGrid(xSpeed);
    y = y + realGrid(ySpeed);

    //x = constrain(x, 0, width-20);
    //y = constrain(y, 0, height-20);
  }

  boolean collision() {
    if (x == fruit.fruitx && y == fruit.fruity) {
      return true;
    } else {
      return false;
    }
  }
}

class Fruit {
  int fruitx = (int(random(1, 30)))*20;
  int fruity = (int(random(1, 30)))*20;

  void display() {
    fill(0);
    rect(fruitx, fruity, 20, 20);
  }

  void reset() {
    fruitx = (int(random(1, 30)))*20;
    fruity = (int(random(1, 30)))*20;
  }
}
