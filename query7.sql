/* Query7 */
/* Count the number of pair of bidders, who bid for the same item */

select count(*) as number_of_pair_of_bidders
from (
select a.userID
from Bid a, Bid b
where a.itemID = b.itemID and a.userID < b.userID
group by a.userID, b.userID) as A;

/* Result:
+---------------------------+
| number_of_pair_of_bidders |
+---------------------------+
|                     24668 |
+---------------------------+
1 row in set (0.12 sec) */

