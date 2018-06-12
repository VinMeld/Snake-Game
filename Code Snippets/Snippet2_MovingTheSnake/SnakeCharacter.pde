// Jared Halls, Michael Lam, Vinay Meldrum
// June 2018
// This class serves as the function of the snake, including its movement and its collision with objects.

class SnakeCharacter {
  // Declaring variables
  int x = 15*20, y = 15*20, xSpeed = 1, ySpeed = 0;

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
    x += xSpeed * 20;
    y += ySpeed * 20;
  }
}