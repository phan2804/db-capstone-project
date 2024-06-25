DELIMITER //

CREATE PROCEDURE AddValidBooking (
    IN p_booking_date DATE,
    IN p_table_number INT,
    IN p_customer_id INT
)
BEGIN
    DECLARE table_status INT;

    -- Start the transaction
    START TRANSACTION;

    -- Check if the table is already booked for the given date
    SELECT COUNT(*) INTO table_status
    FROM Bookings
    WHERE Date = p_booking_date AND `Table Number` = p_table_number;

    -- If the table is already booked, rollback the transaction
    IF table_status > 0 THEN
        ROLLBACK;
        SELECT 'Booking declined. Table is already booked.' AS Status;
    ELSE
        -- If the table is available, insert the new booking record
        INSERT INTO Bookings (BookingID, Date, `Table Number`, CustomerID)
        VALUES ((SELECT IFNULL(MAX(BookingID), 0) + 1 FROM Bookings), p_booking_date, p_table_number, p_customer_id);

        -- Commit the transaction
        COMMIT;
        SELECT 'Booking successful.' AS Status;
    END IF;
END //

DELIMITER ;

call AddValidBooking("2022-11-12",3,3);