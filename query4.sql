/* Query4 */
/* Count the number of sellers whose rating is higher than 1000 */

select count(distinct User.userID) as number_of_sellers 
from Item, User 
where User.userID = Item.userID and rating > 1000;

/* Result:
+-------------------+
| number_of_sellers |
+-------------------+
|              3130 |
+-------------------+
1 row in set (0.09 sec) */