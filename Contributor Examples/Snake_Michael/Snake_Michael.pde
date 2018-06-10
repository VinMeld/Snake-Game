// Michael Lam
// June 2018
// Coding Challenge 3: Snake game created from scratch

// Declaring variables
boolean isCollision = false, up = false, down = false, left = false, right = true;
int widthOfSquare = 20;

// Declaring instances
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();

// Initial setup
void setup() {
  size(600, 600);
  textAlign(CENTER, CENTER);
  textSize(18);
  noStroke();
  ellipseMode(CORNER);
  frameRate(10);
  snake.setFruit(fruit.fruitPoint);
}

// Runs game
void draw() {
  background(38);
  if (!isGameOver()) { // Runs game only when isGameOver is false
    snake.create(); // Creates snake on screen
    isCollision = snake.move(); // Boolean checks if snake will continue moving
    snake.score(); // Displays number of fruit collected
    fruit.display(); // Displays fruit on screen
  } else {
    gameOver(); // Runs gameOver() if snake touches border or itself
  }
  if (isCollision) { // Creates new coordinates for fruit when snake touches it 
    fruit = new Fruit(); // Creates new fruit coordinates
    snake.setFruit(fruit.fruitPoint); // Sets fruit coordinates to the new one made above
  }
}

// Sets isGameOver to true if snake touched border or itself
boolean isGameOver() {
  return snake.isSnakeTouched() || snake.isBorderTouched();
}

// Displays Game Over screen
void gameOver() {
  fill(255);
  text("GAME OVER", 300, 285);
  text("Press Enter to restart.", 305, 315);
  if (keyCode == ENTER || keyCode == RETURN) { // Restarts game when Enter is pressed
    snake.reset();
    keyCode = ALT; // Resets keyCode to prevent game from resetting automatically upon next Game Over
  }
}

// Allows snake movement, but inhibits opposite movement
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