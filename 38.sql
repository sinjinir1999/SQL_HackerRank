--African Cities

Select c.Name from CITY c
inner join COUNTRY co on c.CountryCode=co.Code 
where co.CONTINENT='Africa'
