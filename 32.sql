/*
Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
*/

SELECT ROUND((MAX(LAT_N)-MIN(LAT_N)+MAX(LONG_W)-MIN(LONG_W)),4) FROM STATION;
