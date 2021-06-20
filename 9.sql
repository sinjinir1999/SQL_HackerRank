/*
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
*/

Select COUNT(CITY)-COUNT(Distinct CITY) 
From STATION
