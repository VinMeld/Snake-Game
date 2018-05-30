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

  float realGrid(float x) {
    return x *= 20;
  }

  void direction(float x, float y) {
    xSpeed = x;
    ySpeed = y;
  }

  void move() {
    /*println(pointList.get(0).x);
     println(fruit.fruitPoint.x);
     println(pointList.get(0).y);
     println(fruit.fruitPoint.y);*/

    for (Point point : pointList) {
      point.x += xSpeed;
      point.y += ySpeed;
      println(xSpeed);
      println(point.x);
    }

    //x = constrain(x, 0, width-20);
    //y = constrain(y, 0, height-20);

    // Get the current head of the snake
    Point head = pointList.get(0);

    // Get the x and y from the snake head
    float xHead = head.x;
    float yHead = head.y;

    // Calculate the position of the new snake head
    float newHeadx = xHead + xSpeed;
    float newHeady = yHead + ySpeed;

    // Create the new snake head and add it to the beginning of the list
    Point newHead = new Point(newHeadx, newHeady);
    pointList.add(0, newHead);

    // Remove the snake tail if there is no collision
    if (!collision()) {
      pointList.remove(pointList.size() - 1);
    }
  }

  boolean collision() {
    if (pointList.get(0).x == fruit.fruitPoint.x && pointList.get(0).y == fruit.fruitPoint.y) {
      return true;
    } else {
      return false;
    }
  }

  boolean isGameOver() {
    if (pointList.get(0).x <= 0 || pointList.get(0).y <= 0 || pointList.get(0).x >= 30 || pointList.get(0).y >= 30) {
      return true;
    } else if (keyCode == ENTER && isGameOver()) {
      return false;
    } else {
      return false;
    }
  }

  void grow() {
    for (Point point : pointList) {
      //Point tail = pointList.get(pointList.size() - 1);
      point = new Point(point.x, point.y);
      pointList.add(0, point);
    }
  }
}