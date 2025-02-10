import 'dart:io';

import 'Booking.dart';
import 'Car.dart';
import 'Customer.dart';
import 'Invoice.dart';

class CarRentalSystem {
  List<Car> cars = [];
  List<Booking> bookings = [];
  List<Customer> customers = [];
  CarRentalSystem() {}
  void addCar() {
    print("""Enter Car Type
           (Economy, Sports, Electric):  """);
    String? type = stdin.readLineSync()?.toLowerCase();

    print("Enter Car ID: ");
    int carId = int.parse(stdin.readLineSync()!);

    print("Enter Year: ");
    int year = int.parse(stdin.readLineSync()!);

    print("Enter Rental Price Per Day: ");
    double rentalPrice = double.parse(stdin.readLineSync()!);

    print("Is the car available? (true/false): ");
    bool availability = stdin.readLineSync()!.toLowerCase() == 'true';

    if (type == "economy") {
      cars.add(EconomyCar(carId, year, rentalPrice, availability));
    } else if (type == "sports") {
      cars.add(SportsCar(carId, year, rentalPrice, availability));
    } else if (type == "electric") {
      print("Enter Charging Capacity: ");
      int chargingCapacity = int.parse(stdin.readLineSync()!);
      cars.add(ElectricCar(
          carId, year, rentalPrice, availability, chargingCapacity));
    } else {
      print("Invalid car type entered.");
    }
  }

  void displayAvailableCars() {
    for (int i = 0; i < cars.length; i++) {
      var car = cars[i];
      if (car.availability) {
        car.displayCarDetails();
      }
    }
  }

  void registerCustomer() {
    print("Enter Customer ID: ");
    int customerId = int.parse(stdin.readLineSync()!);

    print("Enter Name: ");
    String name = stdin.readLineSync()!;

    print("Enter Phone: ");
    String phone = stdin.readLineSync()!;

    print("Enter Email: ");
    String email = stdin.readLineSync()!;

    print("Enter Address: ");
    String address = stdin.readLineSync()!;

    customers.add(Customer(customerId, name, phone, email, address));
  }

  void returnCar() {
    print("Enter Car ID: ");
    int id = int.parse(stdin.readLineSync()!);
    bool f = false;
    for (int i = 0; i < cars.length; i++) {
      if (cars[i].carId == id) {
        cars[i].setAvailability(true); // Mark car as available
        print("Car with ID $id has been returned successfully.");
        f = true;
      }
    }
    if (!f) {
      print("Car with ID $id not found.");
    }

    
  }
Car? searchCarById(int id) {
  for (var car in cars) {
    if (car.carId == id&&car.availability) {
      return car;
    }
  }
  return null;
}

Customer? searchCustomerById(int id) {
  for (var customer in customers) {
    if (customer.customerID == id) {
      return customer;
    }
  }
  return null; 
}


  void createBooking() {
  print("Enter Customer ID: ");
  int customerId = int.parse(stdin.readLineSync()!);

  Customer? customer = searchCustomerById(customerId);
  
  if (customer == null) {
    print("Customer not found.");
    return;
  }

  print("Enter Car ID: ");
  int carId = int.parse(stdin.readLineSync()!);

  Car? car = searchCarById(carId);

  if (car == null) {
    print("Car is either not found or not available.");
    return;
  }

  print("Enter Start Date (yyyy-mm-dd): ");
  String startDate = stdin.readLineSync()!;

  print("Enter End Date (yyyy-mm-dd): ");
  String endDate = stdin.readLineSync()!;

  print("Enter Rental Duration (days): ");
  int duration = int.parse(stdin.readLineSync()!);

  double totalCost = car.calculateCost(duration);

  Booking newBooking =
      Booking(bookings.length + 1, customer, car, startDate, endDate, duration);
  newBooking.TotalCost = totalCost;

  car.setAvailability(false); 
  bookings.add(newBooking);

   Invoice invoice = Invoice(
    invoiceID: bookings.length,
    bookingID: newBooking.BookingID,
    customerInfo: customer,
    carInfo: car,
    baseRentalCost: totalCost,
    additionalFees: 0, // No late fee at booking
  );

  invoice.displayInvoice();

  print("Booking created successfully with ID ${newBooking.BookingID}.");
}

  void generateReport() {
    if (bookings.isEmpty) {
      print("No bookings available.");
      return;
    }

    print(" Car Rental Report:");
    print("--------------------------------------------");
    for (var booking in bookings) {
      print("""
Booking ID    : ${booking.BookingID}
Customer Name : ${booking.customerData.name}
Car ID        : ${booking.car.carId}
Car Type      : ${booking.car.runtimeType}
Start Date    : ${booking.StartDate}
End Date      : ${booking.EndDate}
Duration      : ${booking.RentalDuration} days
Total Cost    : \$${booking.TotalCost.toStringAsFixed(2)}
--------------------------------------------
""");
    }
  }
}

