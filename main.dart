
import 'Car.dart';

void main() {
  EconomyCar ecoCar = EconomyCar(101, 2022, 40, true);
  SportsCar sportCar = SportsCar(202, 2021, 120, true, 50);
  ElectricCar elecCar = ElectricCar(303, 2023, 60, true, 75, 20);

  ecoCar.displayCarDetails();
  sportCar.displayCarDetails();
  elecCar.displayCarDetails();

  print("EconomyCar Cost for 3 days: \$${ecoCar.calculateCost(3)}");
  print("SportsCar Cost for 3 days: \$${sportCar.calculateCost(3)}");
  print("ElectricCar Cost for 3 days: \$${elecCar.calculateCost(3)}");
}