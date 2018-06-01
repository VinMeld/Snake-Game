boolean isCollision, gameIsOver = true;
int widthOfSquare = 20, width = 30;
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();

void settings() {
  size(600, 600);
}

void setup() {
  frameRate(10);
  snake.setFruit(fruit.fruitPoint);
}

void draw() {
  try {
    Thread.sleep(150);
  }
  catch(Exception exception) {
  }
  println(snake.touch());
  if (!snake.isGameOver() || !gameIsOver || !snake.touch()) {
    background(255);
    graph();
    snake.create();

    isCollision = snake.move();
    fruit.display();
    snake.changeFruitPos();
    snake.touch();
  } else {
    gameOver();
  }
  if (isCollision) {
    fruit = new Fruit();
    snake.setFruit(fruit.fruitPoint);
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
  gameIsOver = snake.isGameOver();
  background(255);
  snake.xSpeed = 1;
  snake.ySpeed = 0;
  if (snake.isGameOver()) {
    if (keyCode == ENTER) {
      gameIsOver = false;
    }
  }
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