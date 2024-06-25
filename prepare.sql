-- Create the prepared statement
PREPARE GetOrderDetail FROM
    'SELECT orderID, Quantity, BillAmount
     FROM Orders
     WHERE OrderID = ?';

-- Example of setting a variable for CustomerID (assuming CustomerID is an integer)
SET @id = 1;

-- Execute the prepared statement
EXECUTE GetOrderDetail USING @id;