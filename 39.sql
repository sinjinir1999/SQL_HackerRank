--Average Population of Each Continent

Select co.CONTINENT,ROUND(AVG(c.POPULATION)-0.5) from CITY c
inner join COUNTRY co on c.CountryCode=co.Code 
group by 1
