Requirements Explained


1. Create at least 1 table with a single column primary key and at least 1 table with a multi-column primary key
    The Guests table has a single-column primary key guest_id, 
    This is a uniquely identifier for each guest in the hotel. Doing this makes it simpler to reference other guests in other tables.
    The Bookings table has a multi-column primary key (booking_id, guest_id), 
    so that each booking record is unique and explicitly links bookings to guests.


2. Create enough tables to show at least 1 of each of the following relationships: 1:1, 1:n, m:n
    The Bookings to Rooms relationship is 1:1 because each booking is for a specific room; 
    the Guests to Bookings relationship is 1:n as each guest can have multiple bookings; 
    Guests to Staff is many to many because many staff (housekeepers, adminstrators) are for many guests


3. Has at least 1 integrity constraint
    The Reviews table includes a check constraint CHECK (rating BETWEEN 1 AND 5),
    Therefore all reviews are 1-5 stars to maintain data integrity.


4. Create at least 1 view that shows a subsection of columns of one of the tables
    The RoomDetails view shows selected columns (room_id, room_number, room_type, price_per_night) from the Rooms table.
    This allows easy access to specific room details without exposing all columns.


5. Populates the tables (ie adds rows)
    The INSERT statements adds sample data to the tables. It has no null/empty values.
    This shows the databases ability to populate. 


6. Runs a select statement to get some rows from one of the tables
    SELECT * FROM Guests; retrieves all rows from the Guests table. This is a basic example of data retrieval.


7. Runs a select statement for each of the relationships that returns data joined by one or more tables
    I used SELECT statements to join Guests with Bookings and Bookings with Rooms, 
    showing how data from related tables can be combined.


8. Updates some data
    UPDATE Bookings SET booking_status = 'Checked-In' WHERE booking_id = 'BOOK001';
    updates the status of a booking. This is my example of data modification


9. Deletes some data
    DELETE FROM Bookings WHERE booking_id = 'BOOK002'; removes a booking from the database, 
    showing how to remove data that is no longer needed to maintain accuracy and relevance of the data.


10. Runs a select statement for each of the aggregate functions (avg, min, max, sum, and count)
    Various SELECT statements calculate aggregate values such as average price (AVG), minimum price (MIN), maximum price (MAX), 
    total revenue (SUM), and total bookings (COUNT). This gives important summary information about the data for reporting and analysis.


11. Runs a select statement for one aggregate function that uses the GROUP BY clause
    SELECT room_type, COUNT(*) AS number_of_bookings FROM Rooms INNER JOIN Bookings ON Rooms.room_id = Bookings.room_id GROUP BY room_type; 
    groups bookings by room type to analyze data by categories.


12. Runs a statement that tries to violate an integrity constraint
    INSERT INTO Bookings (booking_id, guest_id, room_id, check_in_date, check_out_date, total_price, booking_status) 
    VALUES ('BOOK004', 'GUEST004', 'ROOM004', '2024-05-28', '2024-05-30', 600.00, 'Confirmed'); 
    attempts to insert a booking with non-existent guest and room IDs, 
   showing integrity constraints by the database to prevent invalid data entries.


13. Creates a user that has limited access to the DBMS, such as read only access or write access to only some tables
    Users databaseManager and visitor are created with different access levels. This showcases database security.


14. Runs a statement that, when run as the limited user, is successful
    SELECT * FROM Guests; is successful for the visitor user, 
    confirming that the limited user has the intended access permissions.


15. Runs a statement that, when run as the limited user, is denied:
    INSERT INTO Guests (guest_id, first_name, last_name, email, phone_number, address) VALUES 
    ('GUEST004', 'Test', 'User', 'test.user@example.com', '4444444444', '111 Maple St'); 
    is denied for the visitor user, showing that the database properly enforces access restrictions to enhance security because the visitor user
    cant access what it tried to. 
