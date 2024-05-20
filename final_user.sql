-- This segment creates users with limited access
-- One user represents the manager of the database, another represents the visitor
CREATE USER databaseManager WITH PASSWORD 'password';
CREATE USER visitor WITH PASSWORD 'password';

-- These grant specific permissions. The manager gets all, the visitor only gets guests and rooms for security purposes
GRANT SELECT, INSERT, UPDATE, DELETE ON Guests TO databaseManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Rooms TO databaseManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Bookings TO databaseManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Payments TO databaseManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Staff TO databaseManager;
GRANT SELECT, INSERT, UPDATE, DELETE ON Reviews TO databaseManager;
GRANT SELECT ON Guests TO visitor;
GRANT SELECT ON Rooms TO visitor;

-- This runs a segment that is successful for limited user
-- Assuming the visitor is currently the active user
SELECT * FROM Guests;

-- This runs a segment that is denied for limited user
-- Assuming the visitor is currently the active user
INSERT INTO Guests (guest_id, first_name, last_name, email, phone_number, address)
VALUES ('GUEST004', 'Test', 'User', 'test.user@example.com', '9999999999', '111 Maple St');
