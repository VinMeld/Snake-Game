class Car {
  // Declaring variables
  int carX, carY, carSizeX, carSizeY, maxSpeed;

  // This is called a constructor. It is used to define attributes of the object.
  Car(int tempX, int tempY, int tempSizeX, int tempSizeY, int tempMaxSpeed) {
    // Because the variables differ based on what was set in ClassExample_Car.pde,
    // we use a temporary variable so that the value isn't constant across all cars.
    // You can otherwise initialize these variables as desired. For example,
    // carX = (int)random(0, 300);
    // In this case, you would not need the variable tempX.
    
    carX = tempX;
    carY = tempY;
    carSizeX = tempSizeX;
    carSizeY = tempSizeY;
    maxSpeed = tempMaxSpeed;
  }
  
  // This function is called from ClassExample_Car.pde.
  void display() {
    fill(255, 100, 100);
    // Rectangle is drawn according to the attributes defined for the
    // corresponding car in ClassExample_Car.pde
    rect(carX, carY, carSizeX, carSizeY);
  }
}