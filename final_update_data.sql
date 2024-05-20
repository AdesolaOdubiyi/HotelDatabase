-- Update booking status
UPDATE Bookings
SET booking_status = 'Checked-In'
WHERE booking_id = 'BOOK001';

-- Update room availability status
UPDATE Rooms
SET availability_status = FALSE
WHERE room_id = 'ROOM001';
