-- Active: 1702970788419@@127.0.0.1@3306@myFirst_database

WITH CTE_employee AS
(
 SELECT main.ID, Nama_Depan, Nama_Belakang, umur, Jabatan, Bayaran
 , COUNT (Jabatan) OVER (PARTITION BY Jabatan) AS sum_jabatan
 , AVG (Bayaran) OVER (PARTITION BY Bayaran) AS avg_gaji
 FROM EmployeeDemographic AS main
 INNER JOIN EmployeeSalary AS kuy
    ON main.ID = kuy.ID
)
SELECT *
FROM CTE_employee

-- CTE ini kayak kita buat class di C++, Java, Python