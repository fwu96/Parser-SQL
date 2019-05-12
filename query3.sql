SELECT COUNT(*) FROM (
    SELECT COUNT(Item_cat.itemId) FROM Item_cat GROUP BY Item_cat.itemId HAVING COUNT(*) = 4
    ) AS tmp;