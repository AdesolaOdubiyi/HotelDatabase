-- Delete the payment associated with booking_id 'BOOK002'
DELETE FROM Payments
WHERE booking_id = 'BOOK002';

-- Delete a booking. Deleted booking 2 because it was the cheapest. the hotel company could afford this loss.
DELETE FROM Bookings
WHERE booking_id = 'BOOK002';

-- Delete a review. In the real world, it is likely to delete a bad review hence deleting review 3.
DELETE FROM Reviews
WHERE review_id = 'REVIEW003';
