-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database#Query

-- Gabungin 2 table

SELECT *
FROM EmployeeDemographic 
INNER JOIN EmployeeSalary 
    ON EmployeeDemographic.ID = EmployeeSalary.ID 

SELECT *
FROM EmployeeDemographic
FULL OUTER JOIN EmployeeSalary
    ON EmployeeSalary.ID = EmployeeDemographic.ID

-- Buat bentuk FULL OUTER JOIN
SELECT *
FROM EmployeeDemographic 
LEFT JOIN EmployeeSalary ON EmployeeSalary.ID = EmployeeDemographic.ID
UNION
SELECT *
FROM EmployeeDemographic 
RIGHT JOIN EmployeeSalary ON EmployeeSalary.ID = EmployeeDemographic.ID

SELECT *
FROM EmployeeDemographic 
RIGHT OUTER JOIN EmployeeSalary ON EmployeeDemographic.ID = EmployeeSalary.ID
-- Right bisa ganti LEFT buat cek hasil yang berbeda

SELECT EmployeeDemographic.ID, Nama_Depan, Nama_Belakang, Jabatan, Bayaran
FROM EmployeeDemographic 
LEFT OUTER JOIN EmployeeSalary ON EmployeeDemographic.ID = EmployeeSalary.ID
ORDER BY Bayaran DESC

SELECT Jabatan, AVG (Bayaran) AS Rata2_Gaji
FROM EmployeeDemographic 
INNER JOIN EmployeeSalary ON EmployeeDemographic.ID = EmployeeSalary.ID
WHERE Jabatan = 'HRD'
GROUP BY Jabatan

SELECT Jabatan, AVG (Bayaran) AS Rata2_Gaji
FROM EmployeeDemographic 
INNER JOIN EmployeeSalary ON EmployeeDemographic.ID = EmployeeSalary.ID
GROUP BY Jabatan
