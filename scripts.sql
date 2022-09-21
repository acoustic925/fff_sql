--- Задание 2.1 ---
select cl.ClientName, Count(cc.Id) as count
FROM ClientContacts cc 
LEFT JOIN Clients cl on cl.id = cc.ClientId
GROUP BY cc.ClientId

--- Задание 2.2 ---
select cl.ClientName, Count(cc.Id) as count
FROM ClientContacts cc 
LEFT JOIN Clients cl on cl.id = cc.ClientId
GROUP BY cc.ClientId
HAVING count > 2

--- Задание 3 ---
with t_Dates as (select Id, Dt as Sd, lead(Dt) over (partition by Id order by Dt) as Ed
from Dates
order by Id, Dt)

select * from t_Dates
where ed is not null
