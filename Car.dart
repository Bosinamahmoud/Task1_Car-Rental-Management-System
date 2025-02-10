abstract class Car {
  int carId;
  int year;
  double rentalPricePerDay;
  bool availability;

  Car(this.carId, this.year, this.rentalPricePerDay, this.availability);

  void displayCarDetails();
  double calculateCost(int numberOfDays);

  void setAvailability(bool avail) {
    availability = avail;
  }
}

// EconomyCar class
class EconomyCar extends Car {
  EconomyCar(int carId, int year, double rentalPricePerDay, bool availability)
      : super(carId, year, rentalPricePerDay, availability);

  @override
  double calculateCost(int numberOfDays) {
    return rentalPricePerDay * numberOfDays;
  }

  @override
  void displayCarDetails() {
    print("""
    Car ID: $carId , Year: $year , Rental Price per Day: \$$rentalPricePerDay , Availability: $availability
    """);
  }
}

// SportsCar class
class SportsCar extends Car {
  double luxuryFee=10;

  SportsCar(int carId, int year, double rentalPricePerDay, bool availability,
     )
      : super(carId, year, rentalPricePerDay, availability);

  @override
  double calculateCost(int numberOfDays) {
    return (rentalPricePerDay * numberOfDays) + luxuryFee;
  }

  @override
  void displayCarDetails() {
    print("""
    Car ID: $carId , Year: $year , Rental Price per Day: \$$rentalPricePerDay , Availability: $availability , Luxury Fee: \$$luxuryFee
    """);
  }
}

// ElectricCar class
class ElectricCar extends Car {
  int chargingCapacity;
  double chargingFees=10;

  ElectricCar(int carId, int year, double rentalPricePerDay, bool availability,
      this.chargingCapacity)
      : super(carId, year, rentalPricePerDay, availability);

  @override
  double calculateCost(int numberOfDays) {
    return (rentalPricePerDay * numberOfDays) + chargingFees;
  }

  @override
  void displayCarDetails() {
    print("""
    Car ID: $carId , Year: $year , Rental Price per Day: \$$rentalPricePerDay , Availability: $availability , Charging Capacity: ${chargingCapacity} , Charging Fee: \$$chargingFees
    """);
  }
}
