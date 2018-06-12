// Jared Halls, Michael Lam, Vinay Meldrum
// June 2018
// This class serves as the function of the snake, including its movement and its collision with objects.

class SnakeCharacter {
  // Declaring variables
  int x = realGrid(15), y = realGrid(15), xSpeed = 1, ySpeed = 0;

  // Declaring lists
  ArrayList<SnakeCharacter> snakeLength = new ArrayList<SnakeCharacter>();

  // Creates snake
  void create() {
    fill(199, 234, 70);
    rect(x, y, 20, 20);
  }

  // Moves snake's direction by key press
  void direction(int x, int y) {
    xSpeed = x;
    ySpeed = y;
  }

  // Moves snake's direction
  void move() {
    x = x + realGrid(xSpeed);
    y = y + realGrid(ySpeed);
  }

  // Draws the snake within the grid
  int realGrid(int x) {
    return x *= 20;
  }
}