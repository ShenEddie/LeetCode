select t1.Day, round(ifnull(t2.Cancell / t1.total, 0), 2) as 'Cancellation Rate'
from (select a.Request_at as Day, count(Id) as total
      from Trips a,
           Users b,
           Users c
      where a.Client_Id = b.Users_ID
        and a.Driver_Id = c.Users_ID
        and b.Banned = 'No'
        and c.Banned = 'No'
        and (date(a.Request_at) between '2013-10-1' and '2013-10-3')
      group by a.Request_at) t1
         left join
     (select a.Request_at as Day, count(Id) as Cancell
      from Trips a,
           Users b,
           Users c
      where a.Client_Id = b.Users_ID
        and a.Driver_Id = c.Users_ID
        and b.Banned = 'No'
        and c.Banned = 'No'
        and (date(a.Request_at) between '2013-10-1' and '2013-10-3')
        and (a.Status regexp '^cancelled.*$')
      group by a.Request_at) t2
     on t1.Day = t2.Day
;