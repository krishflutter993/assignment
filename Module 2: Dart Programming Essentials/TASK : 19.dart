
class Vehicle
{
  var vehicleType;
  var fuelType;
  var maxSpeed;

  Vehicle(this.vehicleType, this.fuelType, this.maxSpeed);


  void displayDetails()
  {
    print('Vehicle Type: $vehicleType');
    print('Fuel Type: $fuelType');
    print('Max Speed: $maxSpeed km/h');
  }
}


class Car extends Vehicle
{
  Car(super.vehicleType, super.fuelType, super.maxSpeed);
  void displayDetails()
  {
    print("Car Details:");
    super.displayDetails();
  }
}


class Bike extends Vehicle
{
  Bike(super.vehicleType, super.fuelType, super.maxSpeed);


  void displayDetails()
  {
    print("Bike Details:");
    super.displayDetails();
  }
}


void main()
{
  Car myCar = Car("Car","Petrol", 220);
  Bike myBike = Bike("Bike","Electric", 120);

  myCar.displayDetails();
  print("==========================");
  myBike.displayDetails();
}
