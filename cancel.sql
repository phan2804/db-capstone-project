DELIMITER //

CREATE PROCEDURE CancelOrder (
    IN p_order_id INT
)
BEGIN
    DELETE FROM Orders
    WHERE order_id = p_order_id;
    
    SELECT CONCAT('Order ', p_order_id, ' has been cancelled.') AS 'Cancellation Status';
END //

DELIMITER ;