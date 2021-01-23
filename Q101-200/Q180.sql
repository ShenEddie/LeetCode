select distinct a.Num as ConsecutiveNums
from Logs a,
     Logs b,
     Logs c
where a.Num = b.Num
  and b.Num = c.Num
  and a.ID = b.ID - 1
  and b.ID = c.ID - 1
;