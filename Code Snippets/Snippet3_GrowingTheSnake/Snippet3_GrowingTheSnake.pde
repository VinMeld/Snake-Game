// Jared Halls, Michael Lam, Vinay Meldrum
// June 2018
// Coding Challenge 3 (Snippet 3): Growing the snake when touching the fruit

// Declaring variables
int widthOfSquare = 20;

// Declaring instances
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();

// Initial setup
void setup() {
  size(600, 600);
  frameRate(10);
  snake.setFruit(fruit.fruitPoint);
}

// Runs game
void draw() {
  background(255);
  drawGrid();
  snake.create();
  boolean isCollision = snake.move();
  fruit.display();
  if (isCollision) {
    fruit = new Fruit();
    snake.setFruit(fruit.fruitPoint);
  }
}

// Draws 30 x 30 grid
void drawGrid() {
  for (int i = 0; i < 30; i++) {
    line(i*widthOfSquare, 0, i*widthOfSquare, 600);
    line(0, i*widthOfSquare, 600, i*widthOfSquare);
  }
}

// Displays Game Over screen
void gameOver() {
  background(255);
}

// Allows snake movement
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