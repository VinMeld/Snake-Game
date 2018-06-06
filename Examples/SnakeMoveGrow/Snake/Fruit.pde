class Fruit {
  Point fruitPoint = new Point();

  Fruit() {
    fruitPoint.x = (int(random(1, 30)));
    fruitPoint.y = (int(random(1, 30)));
  }
  void display() {
    fill(0);
    rect(fruitPoint.x*20, fruitPoint.y*20, 20, 20);
  }

  void reset() {
    fruitPoint.x = (int(random(1, 30)));
    fruitPoint.y = (int(random(1, 30)));
  }
}
