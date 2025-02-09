import 'Car.dart';
import 'Customer.dart';

class Booking {
  late int BookingID;
  late Customer customerData;
  late Car car;
  late String StartDate;
  late String EndDate;
  late int RentalDuration;
  late double TotalCost;
  double LateReturnPenalty = 10;
  void calculateTotalCost() {}
  void displayBookingDetails() {}
}
