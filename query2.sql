/* Query2 */
/* Count the number of Items (same as auctions) belonging to exactly four categories */

select count(*) 
from (
select itemID 
from Category 
group by itemID 
having count(*) = 4) as Result;

/* Result:
+----------+
| count(*) |
+----------+
|     8365 |
+----------+
1 row in set (0.03 sec) */