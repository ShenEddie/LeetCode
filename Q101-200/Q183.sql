select a.Name as Customers
from Customers a
         left join
     Orders b
     on a.Id = b.CustomerId
where isNull(b.ID) = 1;