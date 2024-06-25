DELIMITER //

CREATE PROCEDURE CheckBooking (
    IN p_booking_date DATE,
    IN p_table_number INT
)
BEGIN
    DECLARE table_status VARCHAR(50);

    -- Check if the table is booked for the given date and table number
    SELECT 
        CASE WHEN COUNT(*) > 0 THEN 'Table is already booked.'
             ELSE 'Table is available for booking.'
        END INTO table_status
    FROM Bookings
    WHERE Date = p_booking_date AND `Table Number` = p_table_number;

    -- Return the result
    SELECT table_status AS Status;
END //

DELIMITER ;

call CheckBooking("2022-11-12",3);
