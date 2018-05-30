class SnakeCharacter {
  float xSpeed = 1;
  float ySpeed = 0;
  ArrayList<Point> pointList = new ArrayList<Point>();

  SnakeCharacter() {
    pointList.add(new Point(15, 15));
  }

  void create() {
    fill(199, 234, 70);
    for (Point point : pointList) {
      rect(realGrid(point.x), realGrid(point.y), 20, 20);
    }
  }

  void addToSnake() {
  }

  float realGrid(float x) {
    return x *= 20;
  }

  void direction(float x, float y) {
    xSpeed = x;
    ySpeed = y;
  }

  void move() {
    for (Point point : pointList) {
      point.x += xSpeed;
      point.y += ySpeed;
    }
    //x = constrain(x, 0, width-20);
    //y = constrain(y, 0, height-20);
  }

  boolean collision() {
    if (pointList.get(0).x == fruit.fruitPoint.x && pointList.get(0).y == fruit.fruitPoint.y) {
      return true;
    } else {
      return false;
    }
  }
  void grow() {
    Point tail = pointList.get(pointList.size() - 1);
    Point point = new Point(point.x, point.y);
  }
}