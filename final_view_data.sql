-- Select some rows from Guests table
SELECT * FROM Guests;

-- Select statement for each relationship
-- 1:many relationship (Guests to Bookings)
SELECT Guests.guest_id, Guests.first_name, Guests.last_name, Bookings.booking_id, Bookings.room_id
FROM Guests
INNER JOIN Bookings ON Guests.guest_id = Bookings.guest_id;

-- 1:1 relationship (Bookings to Rooms)
SELECT Bookings.booking_id, Bookings.guest_id, Rooms.room_number, Rooms.room_type
FROM Bookings
INNER JOIN Rooms ON Bookings.room_id = Rooms.room_id;

-- m:n relationship (Guests to Staff through GuestStaff)
SELECT Guests.guest_id, Guests.first_name, Guests.last_name, Staff.staff_id, Staff.first_name AS staff_first_name, Staff.last_name AS staff_last_name
FROM Guests
INNER JOIN GuestStaff ON Guests.guest_id = GuestStaff.guest_id
INNER JOIN Staff ON GuestStaff.staff_id = Staff.staff_id;

-- Select statement with aggregate functions
SELECT AVG(total_price) AS average_price FROM Bookings;
SELECT MIN(total_price) AS min_price FROM Bookings;
SELECT MAX(total_price) AS max_price FROM Bookings;
SELECT SUM(total_price) AS total_revenue FROM Bookings;
SELECT COUNT(*) AS total_bookings FROM Bookings;

-- Select statement with GROUP BY clause
SELECT room_type, COUNT(*) AS number_of_bookings
FROM Rooms
INNER JOIN Bookings ON Rooms.room_id = Bookings.room_id
GROUP BY room_type;

-- Statement that violates an integrity constraint
INSERT INTO Bookings (booking_id, guest_id, room_id, check_in_date, check_out_date, total_price, booking_status)
VALUES ('BOOK004', 'GUEST004', 'ROOM004', '2024-05-28', '2024-05-30', 600.00, 'Confirmed');
