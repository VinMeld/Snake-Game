class Fruit {
  Point fruitPoint = new Point();

  Fruit() {
    fruitPoint.x = (int(random(1, 40)));
    fruitPoint.y = (int(random(1, 40)));
  }
  void display() {
    fill(0);
    rect(fruitPoint.x*20, fruitPoint.y*20, 20, 20);
  }

  void reset() {
    fruitPoint.x = (int(random(1, 40)));
    fruitPoint.y = (int(random(1, 40)));
  }
}