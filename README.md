Problem Description: 
Develop a car rental system that manages multiple types of cars, reservations, customers, 
and invoices. The system should allow for different ways to calculate rental costs depending 
on the type of car. It also provides functionality for customer registration, managing 
reservations, and generating invoices, with features tailored for each type of car. 


Objectives: 
1. Manage multiple types of cars such as economy cars, sports cars, and electric cars. 
2. Apply distinct methods to calculate rental costs based on the car type. 
3. Manage customer registration, reservations, and invoice generation. 

System Features: 
1. Car Management: - Add and manage various types of cars with distinctive features. - Implement specific methods for calculating costs for each car type. - Required car types: - Economy Car: Base price with extended distance per day. - Sports Car: Higher daily cost with an additional "luxury" fee. - Electric Car: Daily cost with additional fees for battery charging when used. 
2.Booking Management - Customers can search for available cars and book them for a specified time.                       - The system ensures the availability of the desired car type before confirming the 
booking.                                                                                                                                                         - Car Return: Customers can return the car after the rental period. The system updates 
the car's availability, calculates any late return penalties if applicable, and finalizes the 
booking. 
3. Cost Calculation: - Use polymorphism to calculate rental costs based on the type of car. - Examples of cost calculation: - Economy Car: Cost = Number of days × Base price. - Sports Car: Cost = (Number of days × Base price) + Luxury fees. - Electric Car: Cost = (Number of days × Base price) + Charging fees (if used). 
4. Customer Management: - Add, view, and update customer details. - Maintain a reservation history for each customer. 

 
5.Invoices and Reports: - Generate specific invoices after the reservation period ends. Invoices include: 
  - Reservation time. 
  - Reservation period. 
  - Customer name. 
  - Car ID, type, and cost. 
  - Additional fees or penalties (e.g., late return penalties). - Track reservation records and generate detailed reports in External file (admin access 
only). 
