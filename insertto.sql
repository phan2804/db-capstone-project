-- Inserting records into the Bookings table

-- Record 1
INSERT IGNORE INTO Bookings(BookingID, `Date`, `Table Number`, CustomerID)
VALUES (1, '2022-10-10', 5, 1);

-- Record 2
INSERT IGNORE INTO Bookings(BookingID, `Date`, `Table Number`, CustomerID)
VALUES (2, '2022-11-12', 3, 3);

-- Record 3
INSERT IGNORE INTO Bookings(BookingID, `Date`, `Table Number`, CustomerID)
VALUES (3, '2022-10-11', 2, 2);

-- Record 4
INSERT IGNORE INTO Bookings(BookingID, `Date`, `Table Number`, CustomerID)
VALUES (4, '2022-10-13', 2, 1);
