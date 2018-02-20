/* Query3 */
/* Find the ID(s) of auction(s) with the maximum buy_price */

select itemID 
from Item 
where buy_price = (select max(buy_price) from Item);

/* Result:
+------------+
| itemID     |
+------------+
| 1677348181 |
+------------+
1 row in set (0.17 sec) */