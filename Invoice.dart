import 'Car.dart';
import 'Customer.dart';

class Invoice {
  int invoiceID;
  int bookingID;
  Customer customerInfo;
  Car carInfo;
  double baseRentalCost;
  double additionalFees;
  late double totalAmount;

  Invoice({
    required this.invoiceID,
    required this.bookingID,
    required this.customerInfo,
    required this.carInfo,
    required this.baseRentalCost,
    required this.additionalFees,
  }) {
    generateInvoice();
  }

  void generateInvoice() {
    totalAmount = baseRentalCost + additionalFees;
  }

  void displayInvoice() {
    print("""
     Invoice Details:
    -------------------------
    Invoice ID      : $invoiceID
    Booking ID      : $bookingID
    Customer Name   : ${customerInfo.name}
    Car ID          : ${carInfo.carId}
    Car Type        : ${carInfo.runtimeType}
    Base Rental Cost: \$${baseRentalCost.toStringAsFixed(2)}
    Additional Fees : \$${additionalFees.toStringAsFixed(2)}
    Total Amount    : \$${totalAmount.toStringAsFixed(2)}
    -------------------------
    """);
  }
}
