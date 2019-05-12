SELECT count(DISTINCT User.userID) FROM "User"
INNER JOIN Bids ON "User".userID = Bids.userID
INNER JOIN ItemAuction ON "User".userID = ItemAuction.userID;