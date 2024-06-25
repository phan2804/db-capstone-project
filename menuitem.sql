SELECT
  Name
FROM
    MenuItems
WHERE
    ItemID in (
        SELECT
           MenuID
        FROM
            Orders
        GROUP BY
            MenuID
        HAVING
            COUNT(*) > 2
    );
