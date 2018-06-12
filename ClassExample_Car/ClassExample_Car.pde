// Michael Lam
// June 9, 2018
// This program is used in our Coding Challenge presentation to provide an example of how classes work.

// Declaring instances
Car[] drawCar = new Car[2]; // Creating an array of two cars

void setup() {
  size(600, 600);

  // Attributes order (defined in Car class): x coordinate, y coordinate, x length, y length, maximum speed
  drawCar[0] = new Car(100, 100, 100, 50, 200); // Sets up attributes of first car
  drawCar[1] = new Car(300, 300, 200, 100, 100); // Sets up attributes of second car

  for (int i = 0; i < drawCar.length; i++) { // Runs the following code for each car in the array
    fill(0);
    // Displays the max speed above the corresponding car
    text("Max speed: " + drawCar[i].maxSpeed + "km/h", drawCar[i].carX, drawCar[i].carY);
  }

  /* Draws a grid for every 100 pixels
  for (int i = 0; i < width; i += 100) {
    fill(0);
    line(i, 0, i, 600);
    line(0, i, 600, i);
    text(" " + i, i, 10);
    text(" " + i, 0, i);
  }
  */
}

void draw() {
  drawCar[0].display(); // Displays the first car defined
  drawCar[1].display(); // Displays the second car defined
}