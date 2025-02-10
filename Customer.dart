import 'Booking.dart';
class Customer{
    int customerID;
    String name;
    String phone;
     String email;
    String address;
     List<Booking> History=[];
     Customer(this.customerID,this.name,this.phone,this.email,this.address);
 
  void displayCustomerInfo(){
    print("""Customer : $customerID , Name : $name , phone : $phone , Email : $email , Address : $address """);
   for (int i = 0; i < History.length; i++) {
        History[i].displayBookingDetails();
    }
  }

   void addBooking(Booking b){
        History.add(b);
   }
}