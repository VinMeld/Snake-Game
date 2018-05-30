int widthOfSquare = 20;
int width = 30;
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();

void settings() {
  size(600, 600);
}

void setup() {
  frameRate(5);
}

void draw() {
  println(snake.isGameOver());
  if (!snake.isGameOver()) {
    background(255);
    graph();
    snake.create();
    snake.move();
    fruit.display();
    if (snake.collision()) {
      println("Collision");
    }
  } else {
    gameOver();
  }
}

void graph() {
  for (int i = 0; i < width; i++) {
    line(i*widthOfSquare, 0, i*widthOfSquare, height);
  }
  for (int i = 0; i < height; i++) {
    line(0, i*widthOfSquare, height, i*widthOfSquare);
  }
}

void gameOver() {
  background(255);
}

void keyPressed() {
  if (keyCode == UP) {
    snake.direction(0, -1);
  } else if (keyCode == DOWN) {
    snake.direction(0, 1);
  } else if (keyCode == LEFT) {
    snake.direction(-1, 0);
  } else if (keyCode == RIGHT) {
    snake.direction(1, 0);
  }
}