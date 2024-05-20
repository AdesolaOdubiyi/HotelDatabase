-- This is the guests table with single-column primary key
CREATE TABLE Guests (
    guest_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- This is the rooms table with single-column primary key
CREATE TABLE Rooms (
    room_id VARCHAR(20) PRIMARY KEY,
    room_number VARCHAR(10),
    room_type VARCHAR(20),
    price_per_night NUMERIC(10, 2),
    availability_status BOOLEAN
);

-- This is the bookings table with multi-column primary key and a unique constraint on booking_id
CREATE TABLE Bookings (
    booking_id VARCHAR(20),
    guest_id VARCHAR(20),
    room_id VARCHAR(20),
    check_in_date DATE,
    check_out_date DATE,
    total_price NUMERIC(10, 2),
    booking_status VARCHAR(20),
    PRIMARY KEY (booking_id, guest_id),
    UNIQUE (booking_id),  -- Ensure booking_id is unique
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- This is the payments table with single-column primary key
CREATE TABLE Payments (
    payment_id VARCHAR(20) PRIMARY KEY,
    booking_id VARCHAR(20),
    payment_date DATE,
    amount NUMERIC(10, 2),
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

-- This is the staff table with single-column primary key
CREATE TABLE Staff (
    staff_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(20),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- This reviews table with single-column primary key
CREATE TABLE Reviews (
    review_id VARCHAR(20) PRIMARY KEY,
    guest_id VARCHAR(20),
    room_id VARCHAR(20),
    rating NUMERIC(1, 0) CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- GuestStaff table to create many-to-many relationship between Guests and Staff. The junction table
CREATE TABLE GuestStaff (
    guest_id VARCHAR(20),
    staff_id VARCHAR(20),
    PRIMARY KEY (guest_id, staff_id),
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- This is the view showing a subsection of columns from Rooms table
CREATE VIEW RoomDetails AS
SELECT room_id, room_number, room_type, price_per_night
FROM Rooms;
