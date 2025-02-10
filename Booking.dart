import 'Car.dart';
import 'Customer.dart';

class Booking {
  int BookingID;
  Customer customerData;
  Car car;
  String StartDate;
  String EndDate;
  int RentalDuration;
  late double TotalCost;
  double LateReturnPenalty = 10;
  Booking(this.BookingID, this.customerData, this.car, this.StartDate,
      this.EndDate, this.RentalDuration);
  void calculateTotalCost() {
    TotalCost = car.calculateCost(RentalDuration);
  }
 void displayBookingDetails() {
  print("\nBooking Details:");
  print("Booking ID: $BookingID");
  print("Customer: ${customerData.name}");
  print("Car ID: ${car.carId} (${car.runtimeType})");
  print("Start Date: $StartDate");
  print("End Date: $EndDate");
  print("Rental Duration: $RentalDuration days");

  calculateTotalCost();
  print("Total Cost: \$${TotalCost.toStringAsFixed(2)}");
}

}
