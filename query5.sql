SELECT COUNT(DISTINCT ItemAuction.userID) FROM ItemAuction
INNER JOIN "User" ON ItemAuction.userID = User.userID WHERE rating > 1000; 