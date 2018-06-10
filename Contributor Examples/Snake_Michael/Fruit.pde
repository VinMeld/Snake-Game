// Michael Lam
// June 2018
// This class randomly generates a coordinate for the fruit and displays it on screen

class Fruit {
  // Declaring instances
  Point fruitPoint = new Point();

  // Constructor that assigns random coordinates for the fruit 
  Fruit() {
    fruitPoint.x = (int(random(1, 30)));
    fruitPoint.y = (int(random(1, 30)));
  }

  // Displays fruit on screen
  void display() {
    fill(255);
    ellipse(fruitPoint.x*20, fruitPoint.y*20, 20, 20);
  }
}