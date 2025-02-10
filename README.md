Car Rental System 🚗💨
📌 Problem Description
Develop a Car Rental System that manages multiple types of cars, reservations, customers, and invoices. The system should:

Allow different ways to calculate rental costs based on the car type.
Provide customer registration, reservation management, and invoice generation.
Include specialized features for each type of car.
🎯 Objectives
✔️ Manage multiple types of cars (Economy, Sports, Electric).
✔️ Implement unique cost calculations for each car type.
✔️ Handle customer registration, reservations, and invoices.
✔️ Ensure car availability before confirming bookings.
✔️ Generate invoices and reports after reservations.

🚀 System Features
1️⃣ Car Management
Add and manage different car types with unique features.
Implement specific rental cost calculations for each type:
Economy Car: Base price with extended distance per day.
Sports Car: Higher daily cost + additional "luxury" fee.
Electric Car: Daily cost + charging fees (if used).
2️⃣ Booking Management
Customers can search for available cars and book them.
System ensures availability before confirming bookings.
Car Return:
Updates car availability.
Calculates late return penalties (if applicable).
Finalizes the booking.
3️⃣ Cost Calculation (Polymorphism)
Different rental cost formulas:
Economy Car → Cost = Number of days × Base price
Sports Car → Cost = (Number of days × Base price) + Luxury fees
Electric Car → Cost = (Number of days × Base price) + Charging fees
4️⃣ Customer Management
Add, view, and update customer details.
Maintain reservation history for each customer.
5️⃣ Invoices & Reports
Generate invoices after the reservation period ends.
Invoice details include:
Reservation time & period
Customer name
Car ID, type, and cost
Additional fees or penalties (e.g., late return fees)
Admin-only access to track reservation records and generate reports.
