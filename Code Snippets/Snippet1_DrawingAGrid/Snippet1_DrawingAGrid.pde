// Jared Halls, Michael Lam, Vinay Meldrum
// June 2018
// Coding Challenge 3 (Snippet 1): Drawing a 30 by 30 grid

// Declaring variables
int widthOfSquare = 20;

// Initial setup
void setup() {
  size(600, 600);
}

// Runs game
void draw() {
  background(255);
  drawGrid();
}

// Draws 30 x 30 grid
void drawGrid() {
  for (int i = 0; i < 30; i++) {
    line(i*widthOfSquare, 0, i*widthOfSquare, 600);
    line(0, i*widthOfSquare, 600, i*widthOfSquare);
  }
}