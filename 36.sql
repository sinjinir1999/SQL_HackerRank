-- New Companies

select c.company_code,founder,count(distinct l.lead_manager_code), 
count(distinct s.senior_manager_code), count(distinct m.manager_code), 
count(distinct e.employee_code)
from Company c
inner join Lead_Manager l on c.company_code=l.company_code
Inner join Senior_Manager s on c.company_code=s.company_code
inner Join Manager m on c.company_code=m.company_code
inner join Employee e on c.company_code=e.company_code
group by 1,2
order by 1 
