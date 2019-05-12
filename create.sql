drop table if exists ItemAuction;
drop table if exists Item_cat;
drop table if exists "User";
drop table if exists Bids;
create table ItemAuction(
    ItemID INTEGER PRIMARY KEY,
    Name TEXT,
    Currently REAL,
    Buy_Price REAL,
    First_Bid REAL,
    Number_of_Bids INTEGER,
    Description TEXT,
    Started TEXT,
    Ends TEXT,
    UserID TEXT,
    FOREIGN KEY(UserID) references "User"(UserID)
);
create table Item_cat(
    ItemID INTEGER,
    Category TEXT,
    FOREIGN KEY(ItemID) references ItemAuction(ItemID)
);
create table "User"(
    UserID TEXT PRIMARY KEY,
    rating INTEGER,
    Location TEXT,
    Country TEXT
);
create table Bids(
    ItemID INTEGER,
    UserID TEXT,
    Time TEXT,
    Amount REAL,
    FOREIGN KEY(ItemID) references ItemAuction(ItemID),
    FOREIGN KEY(UserID) references "User"(UserID)
);
