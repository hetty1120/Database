/* Query8 */
/* Count the number of sellers who sell items in more than 10 categories */

select count(*) as number_of_sellers
from (
select a.userID
from Item a join Category b on a.itemID = b.itemID
group by a.userID
having count(distinct category) > 10) as A;

/* Result:
+-------------------+
| number_of_sellers |
+-------------------+
|               234 |
+-------------------+
1 row in set (0.20 sec) */