/* drop tables */

drop table if exists Bid;
drop table if exists Category;
drop table if exists Item;
drop table if exists User;

/* create tables */

create table User(
    userID VARCHAR(50) NOT NULL, 
    rating int NOT NULL,
    location VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    primary key (userID)
);

create table Item(
    itemID VARCHAR(50) NOT NULL,
    name VARCHAR(1000) NOT NULL,
    currently decimal(10,2) NOT NULL,
    buy_price decimal(10,2),
    first_bid decimal(10,2) NOT NULL,
    started datetime NOT NULL,
    ends datetime NOT NULL,
    userID VARCHAR(50) NOT NULL references User(userID),
    description VARCHAR(3000) NOT NULL,
    primary key (itemID)
);

create table Bid(
    itemID VARCHAR(50) NOT NULL,
    userID VARCHAR(50) NOT NULL,
    time datetime NOT NULL,
    amount decimal(10,2) NOT NULL,
    primary key (itemID, userID, time),
    foreign key (itemID) references Item(itemID),
    foreign key (userID) references User(userID)
);

create table Category(
    itemID VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    primary key (itemID, category),
    foreign key (itemID) references Item(itemID)
);


