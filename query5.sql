/* Query5 */
/* Count the number of users who are both sellers and bidders */

select count(distinct Item.userID) as number_of_users
from Item, Bid
where Item.userID = Bid.userID;

/* Result:
+-----------------+
| number_of_users |
+-----------------+
|            6717 |
+-----------------+
1 row in set (0.12 sec) */