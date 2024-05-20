--for simplicity sake, and since it was quite alot of data, I just used basic values to represent certain attributes. 
--such as the 555 phone number

-- Code to insert data into Guests table
INSERT INTO Guests (guest_id, first_name, last_name, email, phone_number, address) VALUES
('GUEST001', 'Adesola', 'Odubiyi', 'adesola.odubiyi@example.com', '1234567890', '123 Main St'),
('GUEST002', 'Jonathan', 'Chin', 'jonathan.chin@example.com', '0987654321', '456 Elm St'),
('GUEST003', 'Joe', 'Biden', 'joe.biden@example.com', '5555555555', '789 Oak St');

-- Code to insert data into Rooms table
INSERT INTO Rooms (room_id, room_number, room_type, price_per_night, availability_status) VALUES
('ROOM001', '101', 'Suite', 250.00, TRUE),
('ROOM002', '102', 'Single', 100.00, TRUE),
('ROOM003', '103', 'Suite', 250.00, TRUE);

-- Code to insert data into Bookings table
INSERT INTO Bookings (booking_id, guest_id, room_id, check_in_date, check_out_date, total_price, booking_status) VALUES
('BOOK001', 'GUEST001', 'ROOM001', '2024-05-20', '2024-05-25', 750.00, 'Confirmed'),
('BOOK002', 'GUEST002', 'ROOM002', '2024-05-22', '2024-05-24', 300.00, 'Confirmed'),
('BOOK003', 'GUEST003', 'ROOM003', '2024-05-23', '2024-05-26', 750.00, 'Confirmed');

-- Code to insert data into Payments table
INSERT INTO Payments (payment_id, booking_id, payment_date, amount, payment_method, payment_status) VALUES
('PAY001', 'BOOK001', '2024-05-19', 750.00, 'Credit Card', 'Completed'),
('PAY002', 'BOOK002', '2024-05-21', 300.00, 'Credit Card', 'Completed'),
('PAY003', 'BOOK003', '2024-05-22', 750.00, 'Credit Card', 'Completed');

-- Code to insert data into Staff table
INSERT INTO Staff (staff_id, first_name, last_name, role, email, phone_number) VALUES
('STAFF001', 'Alice', 'Brown', 'Receptionist', 'alice.brown@example.com', '1111111111'),
('STAFF002', 'Bob', 'Davis', 'Housekeeping', 'bob.davis@example.com', '2222222222'),
('STAFF003', 'Charlie', 'Evans', 'Manager', 'charlie.evans@example.com', '3333333333');

-- Code to insert data into Reviews table
INSERT INTO Reviews (review_id, guest_id, room_id, rating, comment, review_date) VALUES
('REVIEW001', 'GUEST001', 'ROOM001', 5, 'Excellent stay!', '2024-05-26'),
('REVIEW002', 'GUEST002', 'ROOM002', 4, 'Very good service.', '2024-05-24'),
('REVIEW003', 'GUEST003', 'ROOM003', 3, 'Room was okay.', '2024-05-27');

-- Code to Insert data into GuestStaff table
INSERT INTO GuestStaff (guest_id, staff_id) VALUES
('GUEST001', 'STAFF001'),
('GUEST002', 'STAFF002'),
('GUEST003', 'STAFF003'),
('GUEST001', 'STAFF002');  -- Example of many-to-many
