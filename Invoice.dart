import 'Car.dart';
import 'Customer.dart';

class Invoice{
  int? InvoiceID;
  int? BookingID;
  late Customer CustomerInfo;
  late Car CarInfo;
  double BaseRentalCost=10;
  late double AdditionalFees;
  late double TotalAmount;
  void generateInvoice(){}
  void displayInvoice(){}
}