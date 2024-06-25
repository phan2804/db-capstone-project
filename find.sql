SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    o.order_id,
    o.cost,
    m.menu_name,
    mi.course_name,
    mi.starter_name
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Menus m ON o.menu_id = m.menu_id
JOIN 
    MenuItems mi ON m.menu_id = mi.menu_id
WHERE 
    o.cost > 150
ORDER BY 
    o.cost ASC;