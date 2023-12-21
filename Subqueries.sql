-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- subsquary in select 
SELECT ID, Bayaran, (SELECT AVG (Bayaran) 
            FROM EmployeeSalary)
FROM EmployeeSalary

-- PARTITION BY

SELECT ID, Bayaran, AVG (Bayaran) over () 
from EmployeeSalary

-- In FROM

SELECT yuk.ID, a
FROM (SELECT ID, Bayaran, AVG (Bayaran) OVER () AS a
        FROM EmployeeSalary) AS yuk

-- In Where 
SELECT *
FROM EmployeeSalary
WHERE ID IN (SELECT ID
                FROM EmployeeSalary
                WHERE Bayaran > 4000);

