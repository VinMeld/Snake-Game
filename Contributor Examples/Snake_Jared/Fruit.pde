class Fruit {
  Point fruitPoint = new Point();
  Point2 fruitPoint2 = new Point2();

  Fruit() {
    fruitPoint.x = (int(random(1, 40)));
    fruitPoint.y = (int(random(1, 40)));
    fruitPoint2.x2 = (int(random(1,40)));
    fruitPoint2.y2 = (int(random(1,40)));
  }
  void display() {
    fill(0);
    rect(fruitPoint.x*20, fruitPoint.y*20, 20, 20);
    rect(fruitPoint2.x2*20, fruitPoint.y2*20, 20, 20);
  }

  void reset() {
    fruitPoint.x = (int(random(1, 40)));
    fruitPoint.y = (int(random(1, 40)));
    fruitPoint2.x2 = (int(random(1, 40)));
    fruitPoint2.y2 = (int(random(1, 40)));
  }
}
