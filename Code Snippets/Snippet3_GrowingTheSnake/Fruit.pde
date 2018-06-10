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
    fill(0);
    rect(fruitPoint.x*20, fruitPoint.y*20, 20, 20);
  }
}