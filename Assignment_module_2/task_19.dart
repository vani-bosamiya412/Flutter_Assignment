// Create a class hierarchy with a Vehicle superclass and Car and Bike subclasses. Implement methods in each subclass that print
// specific details, like the type of vehicle, fuel type, and max speed.

class Vehicle {
  var fuelType;
  var maxSpeed;
  display() {
    print("Fuel Type: $fuelType");
    print("Max Speed: $maxSpeed");
  }
}
class Car extends Vehicle {
  Car(String fuelType, int maxSpeed) {
    super.fuelType = fuelType;
    super.maxSpeed = maxSpeed;
  }
  displayCar() {
    print("Vehicle Type: Car");
    super.display();
  }
}
class Bike extends Vehicle {
  Bike(String fuelType, int maxSpeed) {
    super.fuelType = fuelType;
    super.maxSpeed = maxSpeed;
  }
  displayBike() {
    print("Vehicle Type: Bike");
    super.display();
  }
}
void main() {
  Car c1 = Car("Diesel", 120);
  Bike b1 = Bike("Petrol", 80);
  print("Car Details");
  c1.displayCar();
  print("Bike Details");
  b1.displayBike();
}