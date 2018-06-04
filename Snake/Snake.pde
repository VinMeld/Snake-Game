boolean isCollision, gameIsOver = true;
int widthOfSquare = 20, width = 30, totalFruit;
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();
boolean up = false, down= false, left= false, right= true;
void settings() {
  size(600, 600);
}

void setup() {
  snake.setFruit(fruit.fruitPoint);
}

void draw() {
  try {
    Thread.sleep(150);
  }
  catch(Exception exception) {
  }
  if (!(snake.touch() || snake.isGameOver() ||  gameIsOver )) {
    background(255);
    snake.fruitTotal();
    graph();
    snake.create();
    isCollision = snake.move();
    fruit.display();
    snake.changeFruitPos();
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
    stroke(224, 224, 224);
    line(i*widthOfSquare, 0, i*widthOfSquare, height);
  }
  for (int i = 0; i < height; i++) {
    line(0, i*widthOfSquare, height, i*widthOfSquare);
  }
}

void gameOver() {
  gameIsOver = snake.isGameOver();
  gameIsOver = snake.touch();

  background(255);
  text("GAME OVER, Press Enter to restart.", 300, 300);

  if (snake.isGameOver()) {
    if (keyCode == ENTER) {
      snake.reset();
      gameIsOver = false;
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    if (!down) {
      snake.direction(0, -1);
      up = true;
      down = false;
      right = false;
      left = false;
    }
  } else if (keyCode == DOWN) {
    if (!up) {
      snake.direction(0, 1);
      down = true;
      up = false;
      right = false;
      left = false;
    }
  } else if (keyCode == LEFT) {
    if (!right) {
      snake.direction(-1, 0);
      down = false;
      up = false;
      left = true;
      right = false;
    }
  } else if (keyCode == RIGHT) {
    if (!left) {
      snake.direction(1, 0);  
      down = false;
      up = false;
      right = true;
      left = false;
    }
  }
}