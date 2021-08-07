-- Population Census

Select SUM(c.POPULATION) from CITY c
inner join COUNTRY co on c.CountryCode=co.Code 
where co.CONTINENT='Asia'
