SELECT ItemID FROM ItemAuction 
WHERE Currently = (SELECT MAX(Currently) 
FROM ItemAuction);