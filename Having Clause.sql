-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

SELECT Gender, COUNT (Gender)
FROM EmployeeDemographic
GROUP BY Gender
HAVING COUNT (Gender) > 3   
-- Having fungsinya sama kayak Where yang mana digunakan untuk menuliskan syarat, tapi penggunaannya lebih luas