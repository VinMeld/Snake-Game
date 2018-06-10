// Jared Halls, Michael Lam, Vinay Meldrum
// June 2018
// This class serves as a coordinate system for both the Fruit and SnakeCharacter class

class Point {
  // Declaring variables
  int x, y;

  // Empty constructor used for fruit
  Point() {
  }

  // Constructor used for snake length
  Point(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}