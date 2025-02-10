import 'Car.dart';
import 'dart:io';
import 'CarRentalSystem.dart';

void menu() {
  CarRentalSystem system = CarRentalSystem(); 

  while (true) {
    print("\nCar Rental System Menu:");
    print("1. Add Car");
    print("2. Register Customer");
    print("3. Create Booking");
    print("4. Display Available Cars");
    print("5. Generate Report");
    print("6. return car");
    print("7. Exit");
    print("Enter your choice: ");


   String? choice = stdin.readLineSync();



    switch (choice) {
      case '1':
        system.addCar();
        break;
      case '2':
        system.registerCustomer();
        break;
      case '3':
        system.createBooking();
        break;
      case '4':
        system.displayAvailableCars();
        break;
      case '5':
        system.generateReport();
        break;
      case '6':
        system.returnCar();
        break;  
      case '7':
        print("Exiting...");
        return;
      default:
        print("Invalid choice, please try again.");
    }
  }
}

void main() {
  menu();
}
