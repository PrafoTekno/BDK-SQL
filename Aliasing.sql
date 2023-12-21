-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

-- Aliasing buat mempersingkat penulisan 

SELECT main.ID, Nama_Depan + ' ' + Nama_Belakang AS Nama_Lengkap, 
yuk.Jabatan, main.umur, yuk.Bayaran 
FROM EmployeeDemographic AS main
INNER JOIN EmployeeSalary AS yuk ON main.ID = yuk.ID