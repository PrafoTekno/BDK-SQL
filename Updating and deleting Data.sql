-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

SELECT *
FROM EmployeeDemographic 

UPDATE EmployeeDemographic
SET Gender = 'Perempuan', umur = 27
WHERE Nama_Depan = 'Joni'

DELETE FROM EmployeeDemographic
WHERE ID = 13442