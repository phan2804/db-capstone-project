-- Delimiter change is required in MySQL/MariaDB to define the procedure
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE max_quantity INT;

    -- Select the maximum quantity from the Orders table
    SELECT MAX(quantity) INTO max_quantity FROM Orders;

    -- Display the result
    SELECT max_quantity AS 'Maximum Ordered Quantity';
END //

DELIMITER ;