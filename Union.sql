-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- Union gabungin elemen dari 2 table 
SELECT ID, Nama_Depan, umur
FROM EmployeeDemographic
UNION                              -- Gabungin ID sama ID, lalu `Nama_Depan` sama Jabatan, umur sama Bayaran 
SELECT ID, Jabatan, Bayaran
FROM EmployeeSalary

SELECT ID, Nama_Depan
FROM EmployeeDemographic
UNION ALL
SELECT ID, Jabatan
FROM EmployeeSalary