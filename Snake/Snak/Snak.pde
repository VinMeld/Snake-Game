int widthOfSquare = 20;
int width = 30;
SnakeCharacter snake = new SnakeCharacter();
Fruit fruit = new Fruit();

void settings() {
  size(600, 600);
}

void setup() {
  frameRate(10);
}

void draw() {
  background(255);
  graph();
  snake.create();
  snake.move();
  snake.tail();
  fruit.display();
  snake.collision();
}

void graph() {
  for (int i = 0; i < width; i++) {
    line(i*widthOfSquare, 0, i*widthOfSquare, height);
  }
  for (int i = 0; i < height; i++) {
    line(0, i*widthOfSquare, height, i*widthOfSquare);
  }
}

void keyPressed() {
  if (keyCode == UP) {
    snake.direction(0, -1);
  } else if (keyCode == DOWN) {
    snake.direction(0, 1);
  } else if (keyCode == LEFT) {
    snake.direction(-1, 0);
  } else if (keyCode == RIGHT) {
    snake.direction(1, 0);
  }
}
