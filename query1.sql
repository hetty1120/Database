/* Query1 */
/* Count the number of Items from category "Enesco" */

select count(*) 
from Category 
where category='Enesco';

/* Result:
+----------+
| count(*) |
+----------+
|      349 |
+----------+
1 row in set (0.02 sec) */