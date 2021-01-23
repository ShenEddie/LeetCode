select w2.ID as ID
from Weather w1,
     Weather w2
where datediff(w1.recordDate, w2.recordDate) = -1
  and w1.Temperature < w2.Temperature
;