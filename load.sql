/* load data to table Item */

load data local infile 'item.dat'
into table Item
fields terminated by '<>';

/* load data to table User */

load data local infile 'user.dat'
into table User
fields terminated by '<>';

/* load data to table Bid */

load data local infile 'bid.dat'
into table Bid
fields terminated by '<>';

/* load data to table Category */

load data local infile 'category.dat'
into table Category
fields terminated by '<>';
