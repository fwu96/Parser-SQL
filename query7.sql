SELECT COUNT(DISTINCT Item_cat.Category) FROM Item_cat
INNER JOIN Bids ON Item_cat.ItemID = Bids.ItemID WHERE Bids.Amount > 100;
