/* Query6 */
/* Count the number of categories that include at least one item with a bid of more than $1000 */

select count(distinct category) as number_of_categories
from Category
where Category.itemID in (select distinct Bid.itemID from Bid where amount > 1000);

/* Result:
+----------------------+
| number_of_categories |
+----------------------+
|                    4 |
+----------------------+
1 row in set (0.25 sec) */
