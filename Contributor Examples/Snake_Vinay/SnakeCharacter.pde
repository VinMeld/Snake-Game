class SnakeCharacter {
  int xSpeed = 1;
  int ySpeed = 0;
  Point fruit;
  ArrayList<Point> pointList = new ArrayList<Point>();
  SnakeCharacter() {
    pointList.add(new Point(15, 15));
  }
  void fruitTotal() {
    text(pointList.size(), 10, 10);
  }
  void create() {
    int headx = pointList.get(0).x;
    int heady = pointList.get(0).y;
    fill(153, 50, 204);
    for (Point point : pointList) {
      rect(realGrid(point.x), realGrid(point.y), 20, 20);
    }
  }

  int realGrid(int x) {
    return x *= 20;
  }

  void direction(int x, int y) {
    xSpeed = x;
    ySpeed = y;
  }

  boolean move() {
    // Get the current head of the snake
    Point head = pointList.get(0);

    // Get the x and y from the snake head
    int xHead = head.x;
    int yHead = head.y;

    // Calculate the position of the new snake head
    int newHeadx = xHead + xSpeed;
    int newHeady = yHead + ySpeed;

    // Create the new snake head and add it to the beginning of the list
    Point newHead = new Point(newHeadx, newHeady);
    pointList.add(0, newHead);

    // Remove the snake tail if there is no collision
    boolean isCollision = collision(newHead);
    if (!isCollision) {
      pointList.remove(pointList.size() - 1);
    }
    return isCollision;
  }

  Point getHead() {
    return pointList.get(0);
  }

  boolean isGameOver() {
    if (pointList.get(0).x < 0 || pointList.get(0).y < 0 || pointList.get(0).x >= 30 || pointList.get(0).y >= 30) {
      return true;
    } 
    return false;
  }

  void setFruit(Point tempFruit) {
    fruit = tempFruit;
  }

  boolean collision(Point snakeHead) {
    if (snakeHead.x == fruit.x && snakeHead.y == fruit.y) {
      return true;
    } else {
      return false;
    }
  }
  void grow() {
    for (Point point : pointList) {
      point = new Point(point.x, point.y);
      pointList.add(0, point);
    }
  }

  void changeFruitPos() {
    for (int i = 0; i < pointList.size(); i++) {
      if (fruit.x == pointList.get(i).x && fruit.y == pointList.get(i).y) {
        fruit.x = (int(random(1, 30)));
        fruit.y = (int(random(1, 30)));
      }
    }
  }

  boolean touch() {
    Point snakeHead = pointList.get(0);
    println("In touch");
    for (int i = 1; i < pointList.size(); i++) {
      if (snakeHead.x == pointList.get(i).x && snakeHead.y == pointList.get(i).y) {
        println("Touch ");
        return true;
      }
    }
    return false;
  }
  void reset() {
    xSpeed = 1;
    ySpeed = 0;
    pointList = new ArrayList<Point>();
    pointList.add(new Point(15, 15));
  }
}